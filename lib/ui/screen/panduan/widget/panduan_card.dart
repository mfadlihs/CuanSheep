import 'package:cuan_sheep/services/model/panduan/panduan.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanduanCard extends StatefulWidget {
  Panduan data;
  PanduanCard({super.key, required this.data});

  @override
  State<PanduanCard> createState() => _PanduanCardState();
}

class _PanduanCardState extends State<PanduanCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(RoutePath.panduanDetail(params: "${widget.data.id}"));
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 1),
                  blurRadius: 3,
                )
              ],
            ),
            child: Text(
              widget.data.title,
              style: h3TextStyle(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
