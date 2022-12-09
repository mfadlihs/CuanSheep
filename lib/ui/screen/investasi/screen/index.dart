import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/home/widget/pen_wrapper.dart';
import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/bottom_navbar.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/custom_button.dart';
import 'package:cuan_sheep/ui/widgets/pen_card.dart';
import 'package:cuan_sheep/ui/widgets/pen_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvestasiScreen extends StatefulWidget {
  const InvestasiScreen({super.key});

  @override
  State<InvestasiScreen> createState() => _InvestasiScreenState();
}

class _InvestasiScreenState extends State<InvestasiScreen> {
  final investasiController = Get.find<InvestasiController>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      investasiController.pens(await RestApi.getPens(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavbar(route: 1),
        appBar: CustomAppbar(
          title: "Cuan Investasi",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari Kandang',
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Paket Proyek ",
                  style: bodyRegularTextStyle(),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CustomButton(
                      text: 'Paket Regular',
                      onPressed: () {
                        Get.toNamed(RoutePath.investasiRegular);
                      },
                    ),
                    SizedBox(width: 10),
                    CustomButton(
                      text: 'Paket Tahunan',
                      onPressed: () {
                        Get.toNamed(RoutePath.investasiTahunan);
                      },
                    )
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Proyek Investasi dibuka ...',
                  style: bodyRegularTextStyle(),
                ),
                ...investasiController.pens.value.map((value) {
                  return PenCard(data: value);
                }),
                // PenWrapperHome(),
                PenWrapper(controller: investasiController.pens)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
