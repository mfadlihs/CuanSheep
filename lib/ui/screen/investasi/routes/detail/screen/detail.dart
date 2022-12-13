import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/detail/widget/card_metode_pembayaran.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/detail/widget/upload_bukti.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/formatter.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InvestasiDetailScreen extends StatefulWidget {
  const InvestasiDetailScreen({super.key});

  @override
  State<InvestasiDetailScreen> createState() => _InvestasiDetailScreenState();
}

class _InvestasiDetailScreenState extends State<InvestasiDetailScreen> {
  final investasiController = Get.find<InvestasiController>();
  var id = Get.parameters['id'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
  }

  @override
  Widget build(BuildContext context) {
    print(id);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Detail Transaksi",
          color: ColorConstants.backgroundColor,
          isRounded: false,
          isShadow: false,
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
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff130F26).withOpacity(0.12),
                        offset: Offset(0, -4),
                        blurRadius: 24,
                      ),
                    ]),
                padding: EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Investasi mu",
                          style: bodyRegularTextStyle(),
                        ),
                        Text(
                          // "Rp100.000",
                          Formatter.uang(investasiController.unit.value *
                              num.parse(
                                  investasiController.getPenDetail(id!).price)),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                            color: Color(0xff393939),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Pilih metode pembayaran",
                      style: bodyBoldTextStyle(),
                    ),
                    SizedBox(height: 3),
                    MetodePembayaranCard(),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Get.toNamed(RoutePath.investasiUpload(id: id));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                              'assets/icons/document_download.svg'),
                          Text(
                            "Bukti Pembayaran",
                            style: h4TextStyle(),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black.withOpacity(0.29),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Petunjuk Vitual Account",
                              style: bodyRegularTextStyle(),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black.withOpacity(0.29),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Petunjuk Bank",
                              style: bodyRegularTextStyle(),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black.withOpacity(0.29),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Petunjuk Tunai",
                              style: bodyRegularTextStyle(),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        backgroundColor: Color(0xffEBEBEB),
                      ),
                      onPressed: () {
                        // Get.toNamed(RoutePath.investasiMetode(farmerId: ))
                      },
                      child: Text(
                        "Ubah Metode Pembayaran",
                        style: bodyRegularTextStyle(
                          color: Color(0xff020202).withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
