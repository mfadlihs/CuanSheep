import 'package:cuan_sheep/app_provider.dart';
import 'package:cuan_sheep/app_router.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/gradient_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 891),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ((context, child) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: GetMaterialApp(
                title: 'Cuan Sheep',
                theme: ThemeData(
                  primaryColor: ColorConstants.primaryColor,
                  primarySwatch: ColorConstants.getPrimaryMaterialColor(),
                  fontFamily: 'Poppins',
                  scaffoldBackgroundColor: Colors.white,
                  listTileTheme: ListTileThemeData(),
                  sliderTheme: SliderThemeData(
                    trackHeight: 10,
                    trackShape: GradientRectSliderTrackShape(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff343A40),
                          Color(0xffFFE465),
                          Color(0xffFFE465),
                        ],
                      ),
                    ),
                    inactiveTrackColor: Color(0xffFFE465),
                    thumbColor: Color(0xff343A40).withAlpha(950),
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 15,
                      elevation: 5,
                    ),
                    inactiveTickMarkColor: Colors.transparent,
                    activeTickMarkColor: Colors.transparent,
                  ),
                ),
                getPages: AppRouter.pages,
                initialRoute: RoutePath.splash,
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                    child: child ?? Container(),
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
