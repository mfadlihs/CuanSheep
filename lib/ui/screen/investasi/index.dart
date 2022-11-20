import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/custom_button.dart';
import 'package:cuan_sheep/ui/widgets/invest_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvestasiScreen extends StatefulWidget {
  const InvestasiScreen({super.key});

  @override
  State<InvestasiScreen> createState() => _InvestasiScreenState();
}

class _InvestasiScreenState extends State<InvestasiScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
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
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
