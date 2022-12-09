import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/formatter.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/custom_button.dart';
import 'package:cuan_sheep/ui/widgets/information_form.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:cuan_sheep/ui/widgets/snackbar.dart';
import 'package:cuan_sheep/utils/currency_formatter.dart';
import 'package:cuan_sheep/utils/open_link.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class InvestasiFormScreen extends StatefulWidget {
  const InvestasiFormScreen({super.key});

  @override
  State<InvestasiFormScreen> createState() => _InvestasiFormScreenState();
}

class _InvestasiFormScreenState extends State<InvestasiFormScreen> {
  final investasiController = Get.find<InvestasiController>();
  var id = Get.parameters['id'];

  // @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      investasiController
          .penDetail({id!: await RestApi.getPenDetail(context, id!)});
    });
  }

  final predict = MoneyMaskedTextController(
    thousandSeparator: '.',
    precision: 0,
    decimalSeparator: "",
  );

  final unitInvest = TextEditingController();

  num predictResult = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: "Investasi",
          isRounded: false,
          isShadow: false,
          color: ColorConstants.backgroundColor,
        ),
        body: SingleChildScrollView(child: GetX<InvestasiController>(
          builder: (controller) {
            // return Text("${controller.unit.value}");
            return controller.getPenDetail(id!).id == 0
                ? LoadingIndicator(
                    height: 80.h,
                  )
                : Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstants.backgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff130F26).withOpacity(0.12),
                              offset: Offset(0, -4),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        width: 100.w,
                        constraints: BoxConstraints(
                          minHeight: 90.h,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RoutePath.home);
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.gps_fixed,
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Alamat Ternak",
                                          style: bodyRegularTextStyle(
                                            color: ColorConstants.black2,
                                          ),
                                        ),
                                        Text(
                                          controller
                                              .getPenDetail(id!)
                                              .farmer
                                              .name,
                                          style: bodyBoldTextStyle(
                                            color: ColorConstants.black2,
                                          ),
                                        ),
                                        // Obx(
                                        //   () => Text(
                                        //     investasiController
                                        //         .getPenDetail(id!)
                                        //         .farmer
                                        //         .name,
                                        //     style: bodyBoldTextStyle(
                                        //       color: ColorConstants.black2,
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Nama Lengkap",
                                style: bodyBoldTextStyle(),
                              ),
                              Obx(() => InformationForm(
                                  text: investasiController
                                      .getPenDetail(id!)
                                      .farmer
                                      .name)),
                              Text(
                                "Peternakan",
                                style: bodyBoldTextStyle(),
                              ),
                              InformationForm(text: 'Ternak Jaya Raya'),
                              Text(
                                "Bagi Hasil",
                                style: bodyBoldTextStyle(),
                              ),
                              Obx(() => InformationForm(
                                  text:
                                      "${investasiController.getPenDetail(id!).dividen}%")),
                              Text(
                                "Potensi ROI",
                                style: bodyBoldTextStyle(),
                              ),
                              InformationForm(
                                text: 'Detail Berkas',
                                isLink: true,
                                onTap: () async {
                                  if (investasiController
                                          .getPenDetail(id!)
                                          .potentialROI ==
                                      "") {
                                    return;
                                  }
                                  await openLink(Uri.parse(investasiController
                                      .getPenDetail(id!)
                                      .potentialROI));
                                },
                              ),
                              Text(
                                "Status",
                                style: bodyBoldTextStyle(),
                              ),
                              Obx(() => InformationForm(
                                  text:
                                      '${investasiController.getPenDetail(id!).stock} Unit Tersedia')),
                              Text(
                                "Harga Unit",
                                style: bodyBoldTextStyle(),
                              ),
                              Obx(
                                () => InformationForm(
                                  text: Formatter.uang(
                                    num.parse(investasiController
                                        .getPenDetail(id!)
                                        .price),
                                  ),
                                ),
                              ),
                              SizedBox(height: 17),
                              Text(
                                "Simulasi Investasi",
                                style: bodyRegularTextStyle(),
                              ),
                              SizedBox(height: 12),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      offset: Offset(0, 2),
                                      blurRadius: 4,
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                ),
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Prediksi hasil keuntunganmu",
                                      style: bodyRegularTextStyle(),
                                    ),
                                    TextField(
                                      controller: predict,
                                      decoration: InputDecoration(
                                        suffix: Text('Rp'),
                                        hintText: "Nominal Investasi (Rp)",
                                        hintStyle: bodyRegularTextStyle(
                                          color: Color(0xff393939)
                                              .withOpacity(0.2),
                                        ),
                                      ),
                                      onChanged: (value) {},
                                      style: bodyRegularTextStyle(),
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 25),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${Formatter.uang(predictResult)} (Hasil)",
                                          style: bodyBoldTextStyle(),
                                        ),
                                        CustomButton(
                                          text: "Hitung",
                                          onPressed: () async {
                                            try {
                                              num data =
                                                  await RestApi.postPrediksi(
                                                      context,
                                                      int.parse(id!),
                                                      predict.numberValue);
                                              setState(() {
                                                predictResult = data;
                                              });
                                            } on Error catch (e) {
                                              setState(() {
                                                predictResult = 0;
                                              });
                                            }
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Masukkan jumlah unit yang ingin anda investasikan",
                                style: bodyRegularTextStyle(),
                              ),
                              SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstants.primaryColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.25),
                                      offset: Offset(0, 2),
                                      blurRadius: 4,
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Unit",
                                          style: captionTextStyle(),
                                        ),
                                        Text(
                                          "Nominal",
                                          style: captionTextStyle(),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 25.w,
                                          child: TextField(
                                            controller: unitInvest,
                                            onChanged: (value) {
                                              if (num.parse(value) >
                                                  num.parse(
                                                    investasiController
                                                        .getPenDetail(id!)
                                                        .stock,
                                                  )) {
                                                investasiController.unit(
                                                  int.parse(investasiController
                                                      .getPenDetail(id!)
                                                      .stock),
                                                );
                                                showAlert(
                                                    "tidak boleh melebihi stock",
                                                    context,
                                                    isFalse: true);

                                                unitInvest.text =
                                                    investasiController
                                                        .getPenDetail(id!)
                                                        .stock;

                                                return;
                                              } else {
                                                if (value == "") {
                                                  investasiController.unit(0);
                                                } else {
                                                  investasiController
                                                      .unit(int.parse(value));
                                                }
                                              }
                                            },
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Obx(
                                          () => Text(
                                            Formatter.uang(investasiController
                                                    .unit.value *
                                                num.parse(investasiController
                                                    .getPenDetail(id!)
                                                    .price)),
                                            style: h4TextStyle(),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value:
                                        investasiController.isReadTerms.value,
                                    onChanged: (value) {},
                                    side: MaterialStateBorderSide.resolveWith(
                                      (states) => BorderSide(
                                          width: 1.5,
                                          color: ColorConstants.primaryColor),
                                    ),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                  ),
                                  Text(
                                    "Saya menyetujui ",
                                    style: captionTextStyle(
                                      size: 10,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(RoutePath.investasiSk);
                                    },
                                    child: Text(
                                      'Syarat dan Ketentuan',
                                      style: captionTextStyle(
                                        size: 10,
                                        weight: FontWeight.w700,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Pilih metode pembayaran",
                                style: bodyBoldTextStyle(),
                              ),
                              SizedBox(height: 3),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(RoutePath.investasiMetode(
                                      farmerId: investasiController
                                          .getPenDetail(id!)
                                          .farmerId));
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: ColorConstants.backgroundColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        offset: Offset(0, 2),
                                        blurRadius: 4,
                                      )
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 9, horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          investasiController.method_transaction
                                                      .value.image ==
                                                  ""
                                              ? SizedBox()
                                              : Image.asset(
                                                  investasiController
                                                      .method_transaction
                                                      .value
                                                      .image,
                                                  height: 13,
                                                ),
                                          SizedBox(width: 5),
                                          Text(
                                            investasiController
                                                .method_transaction.value.text,
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.chevron_right),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (investasiController.unit.value == 0) {
                                    showAlert(
                                        "Unit Investasi tidak boleh kosong",
                                        context,
                                        isFalse: true);
                                    return;
                                  }

                                  if (investasiController
                                          .method_transaction.value.text ==
                                      "") {
                                    showAlert(
                                        "Metode Pembayaran tidak boleh kosong",
                                        context,
                                        isFalse: true);
                                    return;
                                  }

                                  if (!investasiController.isReadTerms.value) {
                                    showAlert(
                                        "Syarat dan Ketentuan belum dibaca",
                                        context,
                                        isFalse: true);
                                    return;
                                  }

                                  Get.toNamed(RoutePath.investasiDetail(
                                    farmerId: investasiController
                                        .getPenDetail(id!)
                                        .farmerId,
                                    id: investasiController
                                        .getPenDetail(id!)
                                        .id,
                                  ));
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    )),
                                child: Text(
                                  'Investasi',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    height: 1.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
          },
        )),
      ),
    );
  }
}
