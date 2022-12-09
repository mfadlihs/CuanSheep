import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/panduan/controller/panduan_controller.dart';
import 'package:cuan_sheep/ui/screen/panduan/widget/panduan_card.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanduanScreen extends StatefulWidget {
  const PanduanScreen({super.key});

  @override
  State<PanduanScreen> createState() => _PanduanScreenState();
}

class _PanduanScreenState extends State<PanduanScreen> {
  final panduanController = Get.find<PanduanController>();

  var s = {
    '1': 12,
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      panduanController.panduan(await RestApi.getPanduan(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          appBar: CustomAppbar(
            title: 'Panduan',
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(25),
              child: panduanController.panduan.isEmpty
                  ? LoadingIndicator()
                  : Column(
                      children: [
                        ...panduanController.panduan.map(
                          (value) {
                            return PanduanCard(data: value);
                          },
                        )
                      ],
                    ),
            ),
          ),
        ),
      );
    });
  }
}
