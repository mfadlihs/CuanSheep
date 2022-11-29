import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/home_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopupHome extends StatefulWidget {
  const PopupHome({super.key});

  @override
  State<PopupHome> createState() => _PopupHomeState();
}

class _PopupHomeState extends State<PopupHome> {
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...homeController.popupData.value.map((e) {
            return ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext builder) {
                    return HomeDialog(
                      title: e.title,
                      content: e.description,
                    );
                  },
                );
              },
              child: Text(
                e.title,
                style: bodyBoldTextStyle(),
              ),
            );
          })

          // ElevatedButton(
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (BuildContext builder) {
          //         return HomeDialog(
          //           title: 'Transparsan',
          //           content:
          //               "Investor dapat memonitoring kandang dengan camera cctv kandang. Tcah Angon secara real-time terkait kondisi ternak.  Alur bagi hasil investasi akan dilaporkan setiap 2 kali sebulan",
          //         );
          //       },
          //     );
          //   },
          //   child: Text(
          //     'Transparan',
          //     style: bodyBoldTextStyle(),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (BuildContext builder) {
          //         return HomeDialog(
          //           title: 'Profesioanal',
          //           content:
          //               'Kualitas pengelolaan akan dilakukan secara terjadwal dan konsisten. Disisi lain, pengolahan kandang berbasis IoT sehingga kualitas yang dihasil sesuai harapan.',
          //         );
          //       },
          //     );
          //   },
          //   child: Text(
          //     'Profesional',
          //     style: bodyBoldTextStyle(),
          //   ),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (BuildContext builder) {
          //         return HomeDialog(
          //           title: 'Aman',
          //           content:
          //               'Keamanan seluruh data pengguna dan transaksi menjadi salah satu prioritas Tcah angon untuk kenyamanan pengguna. ',
          //         );
          //       },
          //     );
          //   },
          //   child: Text(
          //     'Aman',
          //     style: bodyBoldTextStyle(),
          //   ),
          // ),
        ],
      );
    });
  }
}
