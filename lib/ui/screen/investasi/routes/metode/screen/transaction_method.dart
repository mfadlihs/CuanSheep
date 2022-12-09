import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/data/transaction_method_data.dart';
import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InvestasiMetodeTransaksiScreen extends StatefulWidget {
  const InvestasiMetodeTransaksiScreen({super.key});

  @override
  State<InvestasiMetodeTransaksiScreen> createState() =>
      _InvestasiMetodeTransaksiScreenState();
}

class _InvestasiMetodeTransaksiScreenState
    extends State<InvestasiMetodeTransaksiScreen> {
  InvestasiController investasiController = Get.find<InvestasiController>();
  var id = Get.parameters['farmerId'];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // (await RestApi.getPaymentDetail(context, 1));
      investasiController
          .paymentDetail({id!: (await RestApi.getPaymentDetail(context, 1))});
    });
  }

  @override
  Widget build(BuildContext context) {
    print(id);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Pilih Metode Transaksi",
          isRounded: false,
          isShadow: false,
          color: ColorConstants.backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              GetX<InvestasiController>(builder: (controller) {
                if (controller.getPaymentDetail(id!).isEmpty) {
                  return LoadingIndicator(height: 80.h);
                }

                return Container(
                  width: 100.w,
                  padding: EdgeInsets.all(20),
                  constraints: BoxConstraints(minHeight: 90.h),
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
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transfer Bank",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                      ...controller.getPaymentDetail(id!).map((e) => Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  // controller.changeMethodTransaction(e.image, e.text);
                                  controller.changeMethodTransaction(
                                      ImageAsset.bank(e.bank),
                                      "Bank ${e.bank}");

                                  Get.back();
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 18,
                                          vertical: 12,
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              ImageAsset.bank(e.bank),
                                              width: 50,
                                            ),
                                            SizedBox(width: 6),
                                            Text(
                                              "Bank ${e.bank}",
                                              style: bodyRegularTextStyle(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 3,
                                        color: Colors.black.withOpacity(0.29),
                                        thickness: 1.5,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
