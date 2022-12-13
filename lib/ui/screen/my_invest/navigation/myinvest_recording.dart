import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/ui/screen/my_invest/widget/myinvest_card_detail.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/track_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_pointer/transparent_pointer.dart';

class MyInvestRecording extends StatefulWidget {
  const MyInvestRecording({super.key});

  @override
  State<MyInvestRecording> createState() => _MyInvestRecordingState();
}

class _MyInvestRecordingState extends State<MyInvestRecording> {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return Stack(
      children: [
        InkWell(
          onTap: () {
            print(" Fasdjalsjd");
          },
          child: Container(
            height: 250,
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAsset.domba),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50),
                    Center(
                      child: SvgPicture.asset(
                        "assets/icons/video_icon.svg",
                        width: 80,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        TransparentPointer(
          child: SizedBox(
            height: 75.h,
            width: 100.w,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // SizedBox(height: 160),
                IgnorePointer(
                  child: SizedBox(height: 180),
                ),
                Container(
                  width: 100.w,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: ColorConstants.backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      TrackCard(),
                      SizedBox(height: 20),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Berat Saat ini",
                              style: bodyRegularTextStyle(),
                            ),
                            Row(
                              children: [
                                Text(
                                  "90KG",
                                  style: bodyRegularTextStyle(),
                                ),
                                SizedBox(width: 13),
                                Icon(Icons.chevron_right)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kesehatan",
                              style: bodyRegularTextStyle(),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Baik",
                                  style: bodyRegularTextStyle(),
                                ),
                                SizedBox(width: 13),
                                Icon(Icons.chevron_right)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pakan",
                              style: bodyRegularTextStyle(),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Standard",
                                  style: bodyRegularTextStyle(),
                                ),
                                SizedBox(width: 13),
                                Icon(Icons.chevron_right)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Persentase",
                              style: bodyRegularTextStyle(),
                            ),
                            Row(
                              children: [
                                Text(
                                  "24,57%",
                                  style: bodyRegularTextStyle(),
                                ),
                                SizedBox(width: 13),
                                Icon(Icons.chevron_right)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      MyInvestDetailCard(text: "Keuntungan Saat ini"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
