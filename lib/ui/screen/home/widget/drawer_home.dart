import 'package:cuan_sheep/ui/screen/global/controller/user_controller.dart';
import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/utils/logout.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({super.key});

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  final userController = Get.find<UserController>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 20,
              color: Color(0xff353B40),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
              color: ColorConstants.primaryColor,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    return Text(
                      "${homeController.userData.value.first_name} ${homeController.userData.value.last_name}",
                      style: bodyBoldTextStyle(
                        weight: FontWeight.w600,
                      ),
                    );
                  }),
                  Container(
                    width: 210,
                    height: 1.5,
                    color: ColorConstants.secondaryColor,
                  ),
                  SizedBox(height: 4),
                  Obx(() {
                    return Text(
                      homeController.userData.value.email,
                      style: bodyBoldTextStyle(
                        weight: FontWeight.w600,
                      ),
                    );
                  }),
                  Container(
                    width: 210,
                    height: 1.5,
                    color: ColorConstants.secondaryColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
              height: 100.h - 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/faq_icon.svg'),
                          SizedBox(width: 6),
                          Text(
                            "FAQ",
                            style: bodyBoldTextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(height: 13),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/help_icon.svg'),
                          SizedBox(width: 6),
                          Text(
                            "Bantuan",
                            style: bodyBoldTextStyle(),
                          ),
                        ],
                      ),
                      SizedBox(height: 13),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/exclamation_icon.svg'),
                          SizedBox(width: 6),
                          Text(
                            "Tentang Tcah Angon",
                            style: bodyBoldTextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {
                      logout();
                    },
                    child: Text(
                      'Keluar',
                      style: bodyBoldTextStyle(),
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
