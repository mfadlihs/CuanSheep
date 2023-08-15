import 'dart:io';

import 'package:cuan_sheep/ui/screen/global/controller/user_controller.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/bukti_pembayaran/widget/file_upload.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/utils/pick_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BuktiPembayaranScreen extends StatefulWidget {
  const BuktiPembayaranScreen({super.key});

  @override
  State<BuktiPembayaranScreen> createState() => _BuktiPembayaranScreenState();
}

class _BuktiPembayaranScreenState extends State<BuktiPembayaranScreen> {
  File? image;
  final userController = Get.find<UserController>();
  final investasiController = Get.find<InvestasiController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Upload Bukti Bayar",
          color: ColorConstants.backgroundColor,
          isRounded: false,
          isShadow: false,
        ),
        backgroundColor: ColorConstants.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 100.w,
                ),
                Text(
                  "Pilih Foto untuk upload bukti bayar",
                  textAlign: TextAlign.center,
                  style: bodyRegularTextStyle(),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: ColorConstants.primaryColor,
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[700],
                        ),
                        onPressed: () async {
                          File file = await pickImageFromCamera();
                          setState(() {
                            image = file;
                          });
                        },
                        iconSize: 30,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: ColorConstants.primaryColor,
                      child: IconButton(
                        icon: Icon(
                          Icons.image,
                          color: Colors.grey[700],
                        ),
                        onPressed: () async {
                          File file = await pickImage();
                          setState(() {
                            image = file;
                          });
                        },
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
                image == null
                    ? Container()
                    : FileUpload(
                        image: image!,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
