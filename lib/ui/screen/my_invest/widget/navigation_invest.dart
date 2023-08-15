import 'package:cuan_sheep/ui/screen/my_invest/controller/myinvest_controller.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyInvestNavigation extends StatefulWidget {
  const MyInvestNavigation({super.key});

  @override
  State<MyInvestNavigation> createState() => _MyInvestNavigationState();
}

class _MyInvestNavigationState extends State<MyInvestNavigation> {
  final controller = Get.find<MyInvestController>();

  @override
  Widget build(BuildContext context) {
    return GetX<MyInvestController>(builder: (context) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        // color: ColorConstants.backgroundColor,
        color: controller.menu.value == 3
            ? ColorConstants.primaryColor
            : ColorConstants.backgroundColor,
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  controller.menu(1);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  backgroundColor: controller.menu.value == 1
                      ? ColorConstants.primaryColor
                      : Colors.grey[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                child: Text(
                  "Proses",
                  style: bodyBoldTextStyle(
                      color: controller.menu.value == 1
                          ? Colors.black
                          : Color(0xff212529).withOpacity(0.5)),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  controller.menu(2);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  backgroundColor: controller.menu.value == 2
                      ? ColorConstants.primaryColor
                      : Colors.grey[400],
                ),
                child: Text(
                  "Recording",
                  style: bodyBoldTextStyle(
                    color: controller.menu.value == 2
                        ? Colors.black
                        : Color(0xff212529).withOpacity(0.5),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  controller.menu(3);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  backgroundColor: controller.menu.value == 3
                      ? ColorConstants.primaryColor
                      : Colors.grey[400],
                ),
                child: Text(
                  "Riwayat",
                  style: bodyBoldTextStyle(
                    color: controller.menu.value == 3
                        ? Colors.black
                        : Color(0xff212529).withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
