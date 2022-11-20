import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LaunchScreen extends StatefulWidget {
  LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg_launch_screen.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 150),
                  Text(
                    'Kami membatu anda untuk berinvestasi ternak modern',
                    style: h3TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/chevron_right.svg',
                      width: 33,
                      height: 33,
                    ),
                  ),
                  SizedBox(height: 60)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
