import 'package:cuan_sheep/ui/screen/home_screen.dart';
import 'package:cuan_sheep/ui/screen/investasi/form.dart';
import 'package:cuan_sheep/ui/screen/investasi/index.dart';
import 'package:cuan_sheep/ui/screen/investasi/regular.dart';
import 'package:cuan_sheep/ui/screen/investasi/syarat_ketentuan.dart';
import 'package:cuan_sheep/ui/screen/investasi/tahunan.dart';
import 'package:cuan_sheep/ui/screen/investasi/transaction_method.dart';
import 'package:cuan_sheep/ui/screen/launch_screen.dart';
import 'package:cuan_sheep/ui/screen/login_screen.dart';
import 'package:cuan_sheep/ui/screen/panduan/faq.dart';
import 'package:cuan_sheep/ui/screen/panduan/index.dart';
import 'package:cuan_sheep/ui/screen/panduan/investasi.dart';
import 'package:cuan_sheep/ui/screen/panduan/syarat.dart';
import 'package:cuan_sheep/ui/screen/signup_screen.dart';
import 'package:cuan_sheep/ui/screen/splash_screen.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: RoutePath.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RoutePath.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: RoutePath.investasi,
      page: () => InvestasiScreen(),
    ),
    GetPage(
      name: RoutePath.investasiRegular,
      page: () => InvestasiRegularScreen(),
    ),
    GetPage(
      name: RoutePath.investasiTahunan,
      page: () => InvestasiTahunanScreen(),
    ),
    GetPage(
      name: RoutePath.investasiForm,
      page: () => InvestasiFormScreen(),
    ),
    GetPage(
      name: RoutePath.investasiSk,
      page: () => InvestasiSyaratKetentuanScreen(),
    ),
    GetPage(
      name: RoutePath.investasiMetode,
      page: () => InvestasiMetodeTransaksiScreen(),
    ),
    GetPage(
      name: RoutePath.launch,
      page: () => LaunchScreen(),
    ),
    GetPage(
      name: RoutePath.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: RoutePath.panduan,
      page: () => PanduanScreen(),
    ),
    GetPage(
      name: RoutePath.panduanFaq,
      page: () => PanduanFaqScreen(),
    ),
    GetPage(
      name: RoutePath.panduanInvestasi,
      page: () => PanduanInvestasiScreen(),
    ),
    GetPage(
      name: RoutePath.panduanSyarat,
      page: () => PanduanSyaratScreen(),
    ),
    GetPage(
      name: RoutePath.signup,
      page: () => SignupScreen(),
    )
  ];
}
