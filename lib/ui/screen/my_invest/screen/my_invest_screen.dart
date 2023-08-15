import 'dart:async';

import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/my_invest/controller/myinvest_controller.dart';
import 'package:cuan_sheep/ui/screen/my_invest/navigation/myinvest_history.dart';
import 'package:cuan_sheep/ui/screen/my_invest/navigation/myinvest_proses.dart';
import 'package:cuan_sheep/ui/screen/my_invest/navigation/myinvest_recording.dart';
import 'package:cuan_sheep/ui/screen/my_invest/widget/myinvest_card_detail.dart';
import 'package:cuan_sheep/ui/screen/my_invest/widget/navigation_invest.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/widgets/bottom_navbar.dart';
import 'package:cuan_sheep/ui/widgets/profile_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyInvestScreen extends StatefulWidget {
  const MyInvestScreen({super.key});

  @override
  State<MyInvestScreen> createState() => _MyInvestScreenState();
}

class _MyInvestScreenState extends State<MyInvestScreen> {
  // final controller = Get.find<MyInvestController>();
  final controller = Get.put(MyInvestController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      controller.data(await RestApi.getMyInvest(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavbar(route: 2),
        backgroundColor: ColorConstants.primaryColor,
        appBar: ProfileAppbar(
          isLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 100.w,
                constraints: BoxConstraints(
                  minHeight: 95.h,
                ),
                decoration: BoxDecoration(
                  color: ColorConstants.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Obx(
                  () {
                    return Column(
                      children: [
                        MyInvestNavigation(),
                        // controller.menu.value == 1
                        //     ? MyInvestProses()
                        //     : MyInvestRecording(),
                        // MyInvestHistory(),
                        // controller.menu.value == 1
                        //     ? MyInvestProses()
                        //     : MyInvestHistory(),
                        // () <Widget>{
                        // if (controller.menu.value == 1) {
                        //   return MyInvestProses();
                        // }

                        // return MyInvestHistory();
                        // }
                        () {
                          if (controller.menu.value == 1) {
                            return MyInvestProses();
                          }
                          if (controller.menu.value == 2) {
                            return MyInvestRecording();
                          }

                          return MyInvestHistory();
                        }()
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
