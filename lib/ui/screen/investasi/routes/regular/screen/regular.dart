import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/invest_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InvestasiRegularScreen extends StatefulWidget {
  const InvestasiRegularScreen({super.key});

  @override
  State<InvestasiRegularScreen> createState() => _InvestasiRegularScreenState();
}

class _InvestasiRegularScreenState extends State<InvestasiRegularScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            InteractiveViewer(
              child: Container(
                color: ColorConstants.primaryColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            print('fasd');
                          },
                          icon: Icon(
                            Icons.chevron_left,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Paket Regular",
                          style: h4TextStyle(height: 2),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Paket reguler domba merupakan paket invesrasi yang mencapai 4 bulan lebih dengan keuntungan 0,89 - 3,5% pada setiap periodenya.\n\nPaket ini juga digunakan untuk memenuhi kebutuhan pasar yang merata.",
                        style: TextStyle(
                          fontFamily: 'Poppin',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 25.h),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  IgnorePointer(
                    ignoring: true,
                    child: SizedBox(
                      height: 30.h,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    constraints: BoxConstraints(minHeight: 75.h),
                    width: 100.w,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pilihan Kandang",
                          style: bodyRegularTextStyle(),
                        ),
                        SizedBox(height: 15),
                        InkWell(
                          onTap: () {
                            print('fasd');
                          },
                          child: InvestCard(),
                        ),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                        SizedBox(height: 15),
                        InvestCard(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
