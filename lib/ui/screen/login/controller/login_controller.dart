import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {
  RxString email = "".obs;
  RxString password = "".obs;

  static loginApi() async {
    // dynamic s = await RestApi.api.get(RestApi.login);
    // print(s);
  }
}
