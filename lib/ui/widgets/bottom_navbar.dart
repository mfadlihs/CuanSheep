import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class BottomNavbar extends StatefulWidget {
  int? route;

  BottomNavbar({super.key, this.route});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Container(
        height: 80,
        width: 100.w,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  if (widget.route == 1) {
                    Get.offAllNamed(RoutePath.home);
                  } else {
                    Get.toNamed(RoutePath.home);
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: widget.route == 1
                          ? ColorConstants.primaryColor
                          : ColorConstants.icon,
                      size: 25,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 10,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Get.toNamed(RoutePath.myInvest);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.wallet_2,
                      color: widget.route == 2
                          ? ColorConstants.primaryColor
                          : ColorConstants.icon,
                      size: 25,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Investasi",
                      style: TextStyle(
                        fontSize: 10,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.book_1,
                      color: widget.route == 3
                          ? ColorConstants.primaryColor
                          : ColorConstants.icon,
                      size: 25,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Blog",
                      style: TextStyle(
                        fontSize: 10,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/about_icon.svg",
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 10,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
