import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PanduanSyaratScreen extends StatefulWidget {
  const PanduanSyaratScreen({super.key});

  @override
  State<PanduanSyaratScreen> createState() => _PanduanSyaratScreenState();
}

class _PanduanSyaratScreenState extends State<PanduanSyaratScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Syarat dan Ketentuan',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 22),
              Container(
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
                  'Ini syarat dan ketentuan ygy',
                  style: h3TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Container(
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
                  'Ini syarat dan ketentuan ygy',
                  style: h3TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Container(
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
                  'Ini syarat dan ketentuan ygy',
                  style: h3TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
