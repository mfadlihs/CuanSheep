import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CardDetailProfile extends StatefulWidget {
  const CardDetailProfile({super.key});

  @override
  State<CardDetailProfile> createState() => _CardDetailProfileState();
}

class _CardDetailProfileState extends State<CardDetailProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 4),
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detail Alokasi dana",
            style: bodyRegularTextStyle(),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dana Awal beli",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "Rp. 3.300.000",
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Berat",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "60",
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                      child: Text(
                        "Recording",
                        style: bodyBoldTextStyle(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/document_download.svg",
                          color: Color(0xff353B40),
                        ),
                        Text(
                          "Proposal",
                          style: bodyRegularTextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                width: 2,
                color: ColorConstants.primaryColor,
              ),
              SizedBox(width: 15),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Estimasi Penjualan",
                      style: bodyBoldTextStyle(
                        weight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Rp. 12.100.000",
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Berat Akhir",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "60",
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Persentase",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "24,57%",
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Durasi",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "5 Bulan",
                      style: bodyBoldTextStyle(),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
