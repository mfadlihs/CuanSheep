import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/rating_star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbackProfile extends StatefulWidget {
  const FeedbackProfile({super.key});

  @override
  State<FeedbackProfile> createState() => _FeedbackProfileState();
}

class _FeedbackProfileState extends State<FeedbackProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: AssetImage(ImageAsset.ulasanPicture),
              radius: 21,
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Uji Kandang",
                    style: bodyBoldTextStyle(
                      size: 16,
                      color: ColorConstants.text2,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Agung Setyawan",
                    style: bodyRegularTextStyle(size: 12),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      RatingStar(rating: 1, size: 15),
                      SizedBox(width: 4),
                      Text(
                        "5/5",
                        style: bodyRegularTextStyle(
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Kandang sudah layak menjadi tempat ternak. standart pakan dengan wilayah sekitar juga sudah sangat cocok untuk pemeliharaan domba.",
                    textAlign: TextAlign.justify,
                    style: bodyRegularTextStyle(size: 12),
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          child: Container(
            width: 3,
            color: Colors.grey,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 42,
            width: 3,
            color: ColorConstants.primaryColor,
          ),
        )
      ],
    );
  }
}
