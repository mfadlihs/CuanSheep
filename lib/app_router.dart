import 'package:cuan_sheep/ui/screen/global/binding/user_binding.dart';
import 'package:cuan_sheep/ui/screen/global/controller/user_controller.dart';
import 'package:cuan_sheep/ui/screen/home/binding/home_binding.dart';
import 'package:cuan_sheep/ui/screen/home/screen/home_screen.dart';
import 'package:cuan_sheep/ui/screen/investasi/binding/investasi_binding.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/detail/screen/detail.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/form/screen/form.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/status/screen/status.dart';
import 'package:cuan_sheep/ui/screen/investasi/screen/index.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/regular/screen/regular.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/syarat/screen/syarat_ketentuan.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/tahunan/screen/tahunan.dart';
import 'package:cuan_sheep/ui/screen/investasi/routes/metode/screen/transaction_method.dart';
import 'package:cuan_sheep/ui/screen/launch/screen/launch_screen.dart';
import 'package:cuan_sheep/ui/screen/login/binding/login_binding.dart';
import 'package:cuan_sheep/ui/screen/login/controller/login_controller.dart';
import 'package:cuan_sheep/ui/screen/login/screen/login_screen.dart';
import 'package:cuan_sheep/ui/screen/my_invest/binding/myinvest_binding.dart';
import 'package:cuan_sheep/ui/screen/my_invest/screen/my_invest_screen.dart';
import 'package:cuan_sheep/ui/screen/panduan/faq.dart';
import 'package:cuan_sheep/ui/screen/panduan/index.dart';
import 'package:cuan_sheep/ui/screen/panduan/investasi.dart';
import 'package:cuan_sheep/ui/screen/panduan/syarat.dart';
import 'package:cuan_sheep/ui/screen/profile/router/chat/screen/chat_screen.dart';
import 'package:cuan_sheep/ui/screen/profile/router/detail/screen/profile_detail_screen.dart';
import 'package:cuan_sheep/ui/screen/profile/screen/profile_screen.dart';
import 'package:cuan_sheep/ui/screen/signup/binding/signup_binding.dart';
import 'package:cuan_sheep/ui/screen/signup/screen/signup_screen.dart';
import 'package:cuan_sheep/ui/screen/splash/screen/splash_screen.dart';
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
      bindings: [
        UserBinding(),
        HomeBinding(),
      ],
    ),
    GetPage(
      name: RoutePath.investasi,
      page: () => InvestasiScreen(),
      bindings: [
        InvestasiBinding(),
      ],
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
      bindings: [
        InvestasiBinding(),
      ],
    ),
    GetPage(
      name: RoutePath.investasiDetail,
      page: () => InvestasiDetailScreen(),
      binding: InvestasiBinding(),
    ),
    GetPage(
      name: RoutePath.investasiSk,
      page: () => InvestasiSyaratKetentuanScreen(),
      binding: InvestasiBinding(),
    ),
    GetPage(
      name: RoutePath.investasiMetode,
      page: () => InvestasiMetodeTransaksiScreen(),
      binding: InvestasiBinding(),
    ),
    GetPage(
      name: RoutePath.investasiStatus,
      page: () => InvestasiStatusScreen(),
      binding: InvestasiBinding(),
    ),
    GetPage(
      name: RoutePath.launch,
      page: () => LaunchScreen(),
    ),
    GetPage(
      name: RoutePath.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
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
      binding: SignupBinding(),
    ),
    GetPage(
      name: RoutePath.profile,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: RoutePath.profileDetail,
      page: () => ProfileDetailScreen(),
    ),
    GetPage(
      name: RoutePath.profileChat,
      page: () => ChatScreen(),
    ),
    GetPage(
      name: RoutePath.myInvest,
      page: () => MyInvestScreen(),
      binding: MyInvestBinding(),
    ),
  ];
}
