import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAppbar extends StatelessWidget with PreferredSizeWidget {
  final bool isLeading;
  const ProfileAppbar({super.key, this.isLeading = true});

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        elevation: 0,
        flexibleSpace: Row(
          children: [
            SizedBox(width: 10),
            isLeading
                ? InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.chevron_left,
                      size: 40,
                    ),
                  )
                : SizedBox.shrink(),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Ibu Muslimah",
                    style: h4TextStyle(),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xff3EDB69),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Online",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff020202),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
