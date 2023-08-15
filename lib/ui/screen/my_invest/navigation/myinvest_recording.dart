import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/ui/screen/my_invest/controller/myinvest_controller.dart';
import 'package:cuan_sheep/ui/screen/my_invest/widget/myinvest_card_detail.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:cuan_sheep/ui/widgets/track_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:transparent_pointer/transparent_pointer.dart';

class MyInvestRecording extends StatefulWidget {
  const MyInvestRecording({super.key});

  @override
  State<MyInvestRecording> createState() => _MyInvestRecordingState();
}

class _MyInvestRecordingState extends State<MyInvestRecording> {
  final myInvestController = Get.find<MyInvestController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {},
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
            width: 100.w,
            child: Column(
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
                    child: GetX<MyInvestController>(builder: (controller) {
                      if (controller.data.value?.length == 0) {
                        return Column(
                          children: [
                            SizedBox(height: 10),
                            Image.asset(
                              "assets/images/nohistory.png",
                              width: 300,
                            ),
                            Text('Belum ada riwayat investasi')
                          ],
                        );
                      } else {
                        final data = controller.data.value![0];
                        return Column(
                          children: [
                            TrackCard(),
                            SizedBox(height: 20),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              child: ExpansionTile(
                                textColor: Colors.black,
                                backgroundColor: Colors.white,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Berat Saat ini'),
                                    Text(num.parse(data.kandang.initWeight) >
                                            num.parse(data.kandang.weight)
                                        ? 'Buruk'
                                        : 'Baik')
                                  ],
                                ),
                                tilePadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                childrenPadding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 15,
                                  left: 20,
                                  right: 20,
                                ),
                                iconColor: Colors.black,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Berat",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            '${data.kandang.initWeight} KG',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Berat Saat ini",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            '${data.kandang.weight} KG',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kenaikan",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            '${num.parse(data.kandang.weight) - num.parse(data.kandang.initWeight)} KG',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              child: ExpansionTile(
                                textColor: Colors.black,
                                backgroundColor: Colors.white,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Kesehatan'),
                                    Text('Baik'),
                                  ],
                                ),
                                tilePadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                iconColor: Colors.black,
                                childrenPadding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 15,
                                  left: 20,
                                  right: 20,
                                ),
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Suhu",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Normal',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Standard",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Baik',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kandang",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Baik',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              child: ExpansionTile(
                                textColor: Colors.black,
                                backgroundColor: Colors.white,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Pakan'),
                                    Text('Standard'),
                                  ],
                                ),
                                tilePadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                iconColor: Colors.black,
                                childrenPadding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 15,
                                  left: 20,
                                  right: 20,
                                ),
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pakan",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Normal',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 50),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Metode",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            '2 Kali Sehari',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              child: ExpansionTile(
                                textColor: Colors.black,
                                backgroundColor: Colors.white,
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Persentase'),
                                    Text('24,57%'),
                                  ],
                                ),
                                tilePadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                iconColor: Colors.black,
                                childrenPadding: EdgeInsets.only(
                                  top: 0,
                                  bottom: 15,
                                  left: 20,
                                  right: 20,
                                ),
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Suhu",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Normal',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Standard",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Baik',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kandang",
                                            style:
                                                bodyRegularTextStyle(size: 12),
                                          ),
                                          Text(
                                            'Baik',
                                            style: bodyBoldTextStyle(),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            MyInvestDetailCard(text: "Keuntungan Saat ini"),
                          ],
                        );
                      }
                    })),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
