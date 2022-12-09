import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/rating_star.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class PenCard extends StatefulWidget {
  final Pen data;

  const PenCard({super.key, required this.data});

  @override
  State<PenCard> createState() => _PenCardState();
}

class _PenCardState extends State<PenCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RoutePath.investasiForm(id: widget.data.id));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 1),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/image_card_invest.png',
                    width: 65,
                    height: 65,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          widget.data.farmer.name,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                RatingStar(
                                  rating:
                                      double.parse(widget.data.farmer.rating),
                                ),
                                SizedBox(width: 6),
                                Text(
                                  'Tersedia',
                                  style: captionTextStyle(
                                    color: Color(0xff2B67F6),
                                    size: 10,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Paket 5 Bulan',
                              style: captionTextStyle(
                                size: 10,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                  top: 3,
                  bottom: 3,
                  left: 12,
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: Color(0xff343A40),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Text(
                  "Prem",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
