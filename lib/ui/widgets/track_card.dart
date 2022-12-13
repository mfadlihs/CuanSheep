import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/util/track_card_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class TrackCard extends StatefulWidget {
  const TrackCard({super.key});

  @override
  State<TrackCard> createState() => _TrackCardState();
}

class _TrackCardState extends State<TrackCard> {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    DateTime date = DateTime(
      now.day,
      now.month,
    );
    var formatter = DateFormat.yMMM();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.20),
            offset: Offset(0, 4),
            blurRadius: 3,
          )
        ],
        color: Colors.white,
      ),
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                ),
                color: ColorConstants.secondaryColor,
              ),
              child: Text(
                'Tracking Harga Domba',
                style: bodyBoldTextStyle(
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            formatter.format(date),
                            style: bodyRegularTextStyle(),
                          ),
                        ],
                      ),
                      Text(
                        'Terbaru',
                        style: bodyRegularTextStyle(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tidak Baik',
                      style: bodyBoldTextStyle(
                        color: Colors.black.withAlpha(TrackCardNumber.inactive),
                      ),
                    ),
                    Text(
                      'Sedang',
                      style: bodyBoldTextStyle(
                        color: Colors.black.withAlpha(TrackCardNumber.inactive),
                      ),
                    ),
                    Text(
                      'Baik',
                      style: bodyBoldTextStyle(
                        color: Colors.black.withAlpha(TrackCardNumber.active),
                      ),
                    ),
                    Text(
                      'Sangat Baik',
                      style: bodyBoldTextStyle(
                        color: Colors.black.withAlpha(TrackCardNumber.inactive),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Slider(
                    min: 0,
                    value: TrackCardNumber.b,
                    onChanged: (value) {},
                    max: 100,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
