import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/services/model/ulasan/ulasan.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/rating_star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbackProfile extends StatefulWidget {
  Ulasan data;
  FeedbackProfile({super.key, required this.data});

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
                    widget.data.bidang_ahli,
                    style: bodyBoldTextStyle(
                      size: 16,
                      color: ColorConstants.text2,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    widget.data.name,
                    style: bodyRegularTextStyle(size: 12),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      RatingStar(rating: 1, size: 15),
                      SizedBox(width: 4),
                      Text(
                        "${widget.data.rating}/5",
                        style: bodyRegularTextStyle(
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    widget.data.ulasan,
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
