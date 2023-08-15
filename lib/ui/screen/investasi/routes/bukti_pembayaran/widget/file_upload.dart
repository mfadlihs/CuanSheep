import 'dart:io';

import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/global/controller/user_controller.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class FileUpload extends StatefulWidget {
  File image;
  FileUpload({super.key, required this.image});

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
  final investasiController = Get.find<InvestasiController>();
  final userController = Get.find<UserController>();
  var id = Get.parameters['id'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Image.file(
          widget.image,
          width: 100.w,
          height: 300,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Get.toNamed(RoutePath.investasiStatus);
          },
          child: Text('asdasdas'),
        ),
        ElevatedButton(
          onPressed: () async {
            Get.offAllNamed(RoutePath.investasiStatus);

            investasiController.postInvest(
              await RestApi.postInvest(
                context,
                file: widget.image,
                user_id: userController.user.value.id,
                kandang_id: num.parse(id!),
                pembayaran_id: investasiController.choosedPayment.value.id,
                jumlah_unit: investasiController.unit.value,
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(40),
          ),
          child: Text("Investasikan Sekarang"),
        ),
      ],
    );
  }
}
