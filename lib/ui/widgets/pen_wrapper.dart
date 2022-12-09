import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/loading_indicator.dart';
import 'package:cuan_sheep/ui/widgets/pen_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PenWrapper extends StatefulWidget {
  RxList<Pen> controller;

  PenWrapper({super.key, required this.controller});

  @override
  State<PenWrapper> createState() => _PenWrapperState();
}

class _PenWrapperState extends State<PenWrapper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // homeController.penData.length == 0 ? LoadingIndicator() : ;
          widget.controller.isEmpty
              ? LoadingIndicator()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...widget.controller.map((data) {
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
