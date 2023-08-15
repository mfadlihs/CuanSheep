import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/formatter.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInvestDetailCard extends StatefulWidget {
  final text;
  const MyInvestDetailCard({super.key, required this.text});

  @override
  State<MyInvestDetailCard> createState() => _MyInvestDetailCardState();
}

class _MyInvestDetailCardState extends State<MyInvestDetailCard> {
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
            widget.text,
            style: bodyRegularTextStyle(),
          ),
          SizedBox(height: 10),
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
                      Formatter.uang(16500000),
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Berat",
                      style: bodyBoldTextStyle(weight: FontWeight.w400),
                    ),
                    Text(
                      "300 Kg",
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
                        Formatter.uang(26400000),
                        style: bodyBoldTextStyle(),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Berat Akhir",
                        style: bodyBoldTextStyle(weight: FontWeight.w400),
                      ),
                      Text(
                        "480 Kg",
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
                        "3 Bulan",
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
