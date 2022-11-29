import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/invest_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InvestasiTahunanScreen extends StatefulWidget {
  const InvestasiTahunanScreen({super.key});

  @override
  State<InvestasiTahunanScreen> createState() => _InvestasiTahunanScreenState();
}

class _InvestasiTahunanScreenState extends State<InvestasiTahunanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Paket Tahunan",
          color: ColorConstants.primaryColor,
          isShadow: false,
          isRounded: false,
        ),
        body: Stack(
          children: [
            Container(
              color: ColorConstants.primaryColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Paket reguler domba merupakan paket invesrasi yang mencapai 4 bulan lebih dengan keuntungan 0,89 - 3,5% pada setiap periodenya.\n\nPaket ini juga digunakan untuk memenuhi kebutuhan pasar yang merata.",
                      style: TextStyle(
                        fontFamily: 'Poppin',
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    constraints: BoxConstraints(minHeight: 75.h),
                    width: 100.w,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pilihan Kandang",
                          style: bodyRegularTextStyle(),
                        ),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
