import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/home_dialog.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PopupHome extends StatefulWidget {
  const PopupHome({super.key});

  @override
  State<PopupHome> createState() => _PopupHomeState();
}

class _PopupHomeState extends State<PopupHome> {
  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      homeController.popupData(await RestApi.getPopUp(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return homeController.popupData.isEmpty
          ? LoadingIndicator()
          : Row(
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
              ],
            );
    });
  }
}
