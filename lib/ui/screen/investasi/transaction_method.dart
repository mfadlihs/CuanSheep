import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvestasiMetodeTransaksiScreen extends StatefulWidget {
  const InvestasiMetodeTransaksiScreen({super.key});

  @override
  State<InvestasiMetodeTransaksiScreen> createState() =>
      _InvestasiMetodeTransaksiScreenState();
}

class _InvestasiMetodeTransaksiScreenState
    extends State<InvestasiMetodeTransaksiScreen> {
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
        body: Column(
          children: [
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
