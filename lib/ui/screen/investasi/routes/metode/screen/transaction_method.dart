import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/data/transaction_method_data.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
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
  InvestasiController controller = Get.find<InvestasiController>();

  @override
  void initState() {
    print(controller.method_transaction.value.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              ...ImageAsset.methodTransaction.map(
                (e) {
                  return Container(
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
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text(
                            e.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                            ),
                          ),
                        ),
                        ...e.data.map(
                          (e) {
                            return InkWell(
                              onTap: () {
                                controller.changeMethodTransaction(
                                    e.image, e.text);

                                // print(controller.method_transaction.value.text);

                                Get.back();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 14,
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
                                            e.image,
                                            width: 50,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            e.text,
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
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
