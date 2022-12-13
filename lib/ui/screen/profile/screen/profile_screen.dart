import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/services/model/profile/profile.dart';
import 'package:cuan_sheep/ui/screen/profile/widget/card_invest_profile.dart';
import 'package:cuan_sheep/ui/screen/profile/widget/feedback.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/bottom_navbar.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:cuan_sheep/ui/widgets/rating_star.dart';
import 'package:cuan_sheep/utils/open_link.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_pointer/transparent_pointer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Profile? data;
  int angka = 0;
  final id = Get.parameters['id'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Profile dataFromApi = await RestApi.getFarmer(context, num.parse(id!));
      setState(() {
        data = dataFromApi;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: data == null
            ? LoadingIndicator(height: 90.h)
            : Stack(
                children: [
                  Image.network(
                    data!.dokumentasi,
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
                          data!.name,
                          style: h2TextStyle(),
                        ),
                        Text(
                          data!.status,
                          style: bodyBoldTextStyle(
                            size: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(data!.photo),
                        ),
                        SizedBox(height: 10),
                        Text(
                          data!.address,
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
                  Positioned(
                    top: 15,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.chevron_left,
                        size: 50,
                      ),
                    ),
                  ),
                  TransparentPointer(
                    child: SingleChildScrollView(
                      child: Container(
                        constraints: BoxConstraints(minHeight: 100.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IgnorePointer(
                              child: SizedBox(
                                height: 43.h,
                              ),
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
                                vertical: 30,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Rating      | ",
                                            style: bodyRegularTextStyle(),
                                          ),
                                          RatingStar(
                                            rating: double.parse(data!.rating),
                                            max: 5,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              openLink(Uri.parse(
                                                  'https://wa.me/6281907055899'));
                                            },
                                            child: SvgPicture.asset(
                                              "assets/icons/chat_icon.svg",
                                              width: 24,
                                            ),
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
                                    data!.description,
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
                                  SizedBox(
                                    height: 310,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: data!.pens.length,
                                      separatorBuilder: (context, index) =>
                                          SizedBox(width: 15),
                                      itemBuilder: (context, index) => Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: CardInvestProfile(
                                          data: data!.pens[index],
                                        ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ...data!.ulasans.map(
                                        (e) => FeedbackProfile(
                                          data: e,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
