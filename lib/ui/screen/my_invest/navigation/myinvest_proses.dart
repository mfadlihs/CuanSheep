import 'package:cuan_sheep/ui/screen/my_invest/controller/myinvest_controller.dart';
import 'package:cuan_sheep/ui/screen/my_invest/widget/myinvest_card_detail.dart';
import 'package:cuan_sheep/ui/screen/my_invest/widget/navigation_invest.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyInvestProses extends StatefulWidget {
  const MyInvestProses({super.key});

  @override
  State<MyInvestProses> createState() => _MyInvestProsesState();
}

class _MyInvestProsesState extends State<MyInvestProses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyInvestDetailCard(text: "Detail Dana"),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                )
              ],
              color: Colors.white,
            ),
            width: 100.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Investasi mu",
                  style: bodyRegularTextStyle(),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: ColorConstants.primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  width: 100.w,
                  child: Text(
                    "Rp100.000.000",
                    style: bodyRegularTextStyle(
                      weight: FontWeight.w700,
                      color: ColorConstants.text2,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "1 unit",
                    style: bodyRegularTextStyle(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
