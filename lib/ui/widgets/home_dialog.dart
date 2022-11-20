import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDialog extends StatelessWidget {
  final String title;
  final String content;

  const HomeDialog({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: h4TextStyle(),
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Tutup',
                style: bodyBoldTextStyle(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
