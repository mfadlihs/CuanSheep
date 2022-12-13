import 'dart:io';

import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/utils/pick_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class UploadBukti extends StatefulWidget {
  const UploadBukti({super.key});

  @override
  State<UploadBukti> createState() => _UploadBuktiState();
}

class _UploadBuktiState extends State<UploadBukti> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
            backgroundColor: Color(0xffEBEBEB),
          ),
          onPressed: () async {
            File image = await pickImage();
            setState(() {
              this.image = image;
            });

            // print(image.path);
          },
          child: Text(
            "Upload Bukti Pembayaran",
            style: bodyRegularTextStyle(
              color: Color(0xff020202).withOpacity(0.5),
            ),
          ),
        ),
        SizedBox(height: 30),
        Text("Bukti Bayar"),
        image == null
            ? Container()
            : Image.file(
                image!,
                width: 100.w,
                fit: BoxFit.cover,
              ),
        SizedBox(height: 30),
        ElevatedButton(
          onPressed: image == null ? null : () {},
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50),
          ),
          child: Text('Investasi Sekarang'),
        ),
      ],
    );
  }
}
