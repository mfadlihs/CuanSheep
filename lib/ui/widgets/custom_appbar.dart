import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color color;
  final bool isRounded;
  final bool isShadow;

  const CustomAppbar(
      {super.key,
      required this.title,
      this.color = ColorConstants.primaryColor,
      this.isRounded = true,
      this.isShadow = true});

  @override
  Size get preferredSize => Size(double.infinity, 60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: isShadow ? 4 : 0,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        splashColor: Color.fromARGB(15, 129, 129, 129),
        child: Icon(
          Icons.chevron_left,
          size: 40,
        ),
      ),
      title: Text(
        title,
        style: h4TextStyle(),
      ),
      centerTitle: false,
      shape: isRounded
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            )
          : null,
      backgroundColor: color,
    );
  }
}
