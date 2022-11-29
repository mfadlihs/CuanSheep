import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BubleWidget extends StatefulWidget {
  final String text;
  final bool isUser;
  BubleWidget({
    super.key,
    required this.text,
    required this.isUser,
  });

  @override
  State<BubleWidget> createState() => _BubleWidgetState();
}

class _BubleWidgetState extends State<BubleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: widget.isUser ? Alignment.topRight : Alignment.topLeft,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
            constraints: BoxConstraints(
              maxWidth: 60.w,
            ),
            decoration: BoxDecoration(
              color: widget.isUser ? ColorConstants.primaryColor : Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(widget.isUser ? 20 : 0),
                topRight: Radius.circular(widget.isUser ? 0 : 20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
