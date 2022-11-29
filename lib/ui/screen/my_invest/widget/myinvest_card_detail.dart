import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInvestDetailCard extends StatelessWidget {
  final String text;
  const MyInvestDetailCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(14)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: bodyRegularTextStyle(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
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
                    SizedBox(height: 8),
                    Text(
                      "Berat",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "60",
                      style: bodyBoldTextStyle(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: ColorConstants.primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Estimasi Penjualan",
                        style: bodyBoldTextStyle(weight: FontWeight.w400),
                      ),
                      Text(
                        "Rp. 12.100.000",
                        style: bodyBoldTextStyle(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Berat Akhir",
                        style: bodyBoldTextStyle(weight: FontWeight.w400),
                      ),
                      Text(
                        "60",
                        style: bodyBoldTextStyle(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Persentase",
                        style: bodyBoldTextStyle(weight: FontWeight.w400),
                      ),
                      Text(
                        "24,57%",
                        style: bodyBoldTextStyle(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Durasi",
                        style: bodyBoldTextStyle(weight: FontWeight.w400),
                      ),
                      Text(
                        "5 Bulan",
                        style: bodyBoldTextStyle(),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
