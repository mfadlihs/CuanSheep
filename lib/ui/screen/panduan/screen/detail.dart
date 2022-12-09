import 'package:cuan_sheep/ui/screen/panduan/controller/panduan_controller.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanduanDetailScreen extends StatefulWidget {
  const PanduanDetailScreen({super.key});

  @override
  State<PanduanDetailScreen> createState() => _PanduanDetailScreenState();
}

class _PanduanDetailScreenState extends State<PanduanDetailScreen> {
  var id = Get.parameters['detail'];

  final panduanController = Get.find<PanduanController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = panduanController.panduan.value
        .firstWhere((e) => e.id == int.parse(id!));

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          title: data.title,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: h4TextStyle(),
                ),
                SizedBox(height: 10),
                Text(
                  data.description,
                  style: bodyRegularTextStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
