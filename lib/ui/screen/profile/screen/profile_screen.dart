import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/ui/screen/profile/widget/card_invest_profile.dart';
import 'package:cuan_sheep/ui/screen/profile/widget/feedback.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/rating_star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Image.asset(
              ImageAsset.domba,
              height: 50.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
            Container(
              height: 50.h,
              width: 100.w,
              color: Color(0xffFFE465).withOpacity(0.7),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Ibu Muslimah",
                    style: h2TextStyle(),
                  ),
                  Text(
                    "Perternak modern domba lokal",
                    style: bodyBoldTextStyle(
                      size: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(ImageAsset.profilePicture),
                  ),
                  Text(
                    "Dampit, Malang\n±9 m dari lokasimu",
                    style: bodyRegularTextStyle(
                      color: Color(
                        0xff343A40,
                      ),
                      size: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(minHeight: 100.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 43.h,
                    ),
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: ColorConstants.backgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 60,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Rating      | ",
                                    style: bodyRegularTextStyle(),
                                  ),
                                  RatingStar(
                                    rating: 4,
                                    max: 5,
                                    size: 15,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/chat_icon.svg",
                                    width: 24,
                                  ),
                                  SizedBox(width: 12),
                                  SvgPicture.asset(
                                    "assets/icons/share_icon.svg",
                                    width: 24,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Info Kandang",
                            style: bodyRegularTextStyle(
                              color: ColorConstants.text2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Ibu Muslimah adalah peternak lokal modern yang telah bergabung selama 1 tahun tcah angon dan telah banyak berkerjasama dengan sukses. Ibu Muslimah mendapat penghargaan “The Most Active farmer” (2021) pada acara peringatan Hari Ternak yang diadakan di Yogyakarta.",
                            style: bodyRegularTextStyle(
                              size: 12,
                              color: ColorConstants.text2,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Investasi",
                            style: bodyRegularTextStyle(
                              color: ColorConstants.text2,
                            ),
                          ),
                          SizedBox(height: 10),
                          // CardInvestProfile(),
                          SizedBox(
                            height: 310,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              separatorBuilder: (context, index) =>
                                  SizedBox(width: 15),
                              itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: CardInvestProfile(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Ulasan Investor",
                            style: bodyRegularTextStyle(),
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              FeedbackProfile(),
                              FeedbackProfile(),
                              FeedbackProfile(),
                              FeedbackProfile(),
                            ],
                          ),
                        ],
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
