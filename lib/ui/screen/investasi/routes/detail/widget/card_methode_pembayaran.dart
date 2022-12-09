import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MetodePembayaranCard extends StatefulWidget {
  const MetodePembayaranCard({super.key});

  @override
  State<MetodePembayaranCard> createState() => _MetodePembayaranCardState();
}

class _MetodePembayaranCardState extends State<MetodePembayaranCard> {
  InvestasiController controller = Get.find<InvestasiController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 2),
            blurRadius: 4,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                controller.method_transaction.value.image,
                width: 33,
              ),
              SizedBox(width: 4),
              Text(
                controller.method_transaction.value.text,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            "No Virtual Account",
            style: captionTextStyle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "127 7891 2445 145",
                style: h4TextStyle(
                  color: Color(0xffFCCE39),
                ),
              ),
              Text(
                "Salin",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  height: 1.5,
                ),
              )
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
            height: 2,
          ),
          SizedBox(height: 2),
          Text(
            "Dicek otomatis dalam 10 menit setelah pembayaran ",
            style: captionTextStyle(
              color: Color(
                0xff001FBF,
              ),
            ),
          ),
          Text(
            "Hanya menerima dari bank BCA",
            style: captionTextStyle(
              color: Color(0xff212529).withOpacity(0.68),
            ),
          )
        ],
      ),
    );
  }
}
