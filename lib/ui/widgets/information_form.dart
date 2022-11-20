import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationForm extends StatelessWidget {
  final String text;
  bool isLink;
  void Function()? onTap;

  InformationForm(
      {super.key, required this.text, this.isLink = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 4,
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 1.5,
                color: isLink ? Color(0xff0061C2) : Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
