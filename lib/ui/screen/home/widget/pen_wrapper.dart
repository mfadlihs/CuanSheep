import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:cuan_sheep/ui/widgets/pen_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PenWrapperHome extends StatefulWidget {
  const PenWrapperHome({super.key});

  @override
  State<PenWrapperHome> createState() => _PenWrapperHomeState();
}

class _PenWrapperHomeState extends State<PenWrapperHome> {
  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      homeController.penData(await RestApi.getPens(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Investasi Pilihan untuk mu...',
            style: bodyRegularTextStyle(),
          ),
          SizedBox(height: 10),
          // homeController.penData.length == 0 ? LoadingIndicator() : ;
          homeController.penData.length == 0
              ? LoadingIndicator()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...homeController.penData.map((data) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PenCard(
                            data: data,
                          ),
                          SizedBox(height: 10)
                        ],
                      );
                    })
                  ],
                )
        ],
      );
    });
  }
}
