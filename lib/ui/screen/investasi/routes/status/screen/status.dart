import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InvestasiStatusScreen extends StatefulWidget {
  const InvestasiStatusScreen({super.key});

  @override
  State<InvestasiStatusScreen> createState() => InvestasiStatusScreenState();
}

class InvestasiStatusScreenState extends State<InvestasiStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Status Investasi",
          color: ColorConstants.backgroundColor,
          isShadow: false,
          isRounded: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff130F26).withOpacity(0.12),
                      offset: Offset(0, -4),
                      blurRadius: 24,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xffF4F5FF),
                ),
                width: 100.w,
                height: 100.h,
                child: Column(
                  children: [
                    Image.asset(
                      ImageAsset.statusInvestasi,
                      height: 230,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Investasi anda berhasil",
                      style: h4TextStyle(),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Investasi mu",
                            style: bodyRegularTextStyle(),
                          ),
                          Container(
                            width: 100.w,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Text(
                              'Rp100.000.000',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                height: 1.5,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.topRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 30,
                                ),
                              ),
                              child: Text(
                                'Lihat Proses invesmu',
                                style: bodyBoldTextStyle(),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
