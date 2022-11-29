import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class MyInvestHistory extends StatefulWidget {
  const MyInvestHistory({super.key});

  @override
  State<MyInvestHistory> createState() => _MyInvestHistoryState();
}

class _MyInvestHistoryState extends State<MyInvestHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryColor,
      width: 100.w,
      height: 90.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Image.asset(
            "assets/images/nohistory.png",
            width: 300,
          ),
          Text(
            "Tidak ada Riwayat",
            style: bodyRegularTextStyle(),
          ),
        ],
      ),
    );
  }
}
