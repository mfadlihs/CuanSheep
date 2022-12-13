import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/services/model/kandang/kandang.dart';
import 'package:cuan_sheep/ui/util/formatter.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class CardInvestProfile extends StatefulWidget {
  Kandang data;
  CardInvestProfile({super.key, required this.data});

  @override
  State<CardInvestProfile> createState() => _CardInvestProfileState();
}

class _CardInvestProfileState extends State<CardInvestProfile> {
  var percent = NumberFormat.percentPattern("ar");

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
                          widget.data.name,
                          style: h4TextStyle(
                            height: 1,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                value: (num.parse(widget.data.collected) /
                                    num.parse(widget.data.needs)),
                                backgroundColor: Colors.grey,
                                minHeight: 6,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '${percent.format(num.parse(widget.data.collected) / num.parse(widget.data.needs))}',
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
                              Formatter.uang(num.parse(widget.data.needs)),
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
                              Formatter.uang(num.parse(widget.data.collected)),
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
                              "${widget.data.duration} Bulan",
                              style: bodyRegularTextStyle(
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed(
                                RoutePath.investasiForm(id: widget.data.id));
                          },
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
