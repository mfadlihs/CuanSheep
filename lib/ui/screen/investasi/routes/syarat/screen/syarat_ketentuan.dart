import 'package:cuan_sheep/data/sk_invest.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class InvestasiSyaratKetentuanScreen extends StatefulWidget {
  const InvestasiSyaratKetentuanScreen({super.key});

  @override
  State<InvestasiSyaratKetentuanScreen> createState() =>
      _InvestasiSyaratKetentuanScreenState();
}

class _InvestasiSyaratKetentuanScreenState
    extends State<InvestasiSyaratKetentuanScreen> {
  InvestasiController investasiState = Get.find<InvestasiController>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      investasiState.isReadTerms(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Syarat dan Ketentuan",
          color: ColorConstants.backgroundColor,
          isRounded: false,
          isShadow: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...SyaratKetentuan.data.map((e) {
                      return Text(
                        e.text,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins",
                          height: 1.5,
                          fontWeight:
                              e.isHeader ? FontWeight.w700 : FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      );
                    })
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
