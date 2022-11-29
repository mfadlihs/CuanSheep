import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardInvestProfile extends StatefulWidget {
  const CardInvestProfile({super.key});

  @override
  State<CardInvestProfile> createState() => _CardInvestProfileState();
}

class _CardInvestProfileState extends State<CardInvestProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  ImageAsset.imageInvestProfileCard,
                  fit: BoxFit.contain,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Ibu Salimah #1",
                          style: h4TextStyle(
                            height: 1,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.5,
                                backgroundColor: Colors.grey,
                                minHeight: 6,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '60%',
                              style: captionTextStyle(size: 12),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dibutuhkan",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                            Text(
                              "Rp. 3.300.000",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Terkumpul",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                            Text(
                              "Rp. 1.700.000",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Durasi",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                            Text(
                              "5 Bulan",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.fromHeight(30),
                            // minimumSize: Size.zero,
                          ),
                          child: Text(
                            "Investasi Sekarang",
                            style: bodyBoldTextStyle(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
