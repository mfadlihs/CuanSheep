import 'dart:convert';

import 'package:cuan_sheep/services/api/token.dart';
import 'package:cuan_sheep/services/model/User/user.dart';
import 'package:cuan_sheep/services/model/popup/popup.dart';
import 'package:cuan_sheep/ui/screen/global/controller/user_controller.dart';
import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/widgets/snackbar.dart';
import 'package:cuan_sheep/utils/logout.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' hide Response;

String baseUrl = "http://tcah-angon.ruangbaca-fisipedu.my.id/api";

class RestApi {
  static tes() {
    final userController = Get.find<UserController>();
    print(userController.nama);
  }

  static Future<Map<String, dynamic>> header() async {
    return {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": await Usertoken.getToken(),
    };
  }

  static onErrorToken(BuildContext context) {
    showAlert("error token, please refresh or logout", context);
    logout();
  }

  static Future login(BuildContext context,
      {required String email, required String password}) async {
    final api = Dio();
    try {
      Response request = await api.post(
        "$baseUrl/login",
        data: jsonEncode(
          {
            "email": email,
            "password": password,
          },
        ),
      );

      showAlert("Anda Berhasil Login", context);
      User user = User.fromJson(request.data);
      Usertoken.setToken("Bearer ${user.token}");

      Get.offAllNamed(RoutePath.home);
    } on DioError catch (e) {
      return showAlert("Email atau Password anda salah", context,
          isFalse: true);
    }
  }

  static Future getUser(BuildContext context) async {
    final api = Dio();
    UserData user;
    final userController = Get.find<UserController>();

    try {
      api.options.headers = await header();
      Response res = await api.get("$baseUrl/user");

      user = UserData.fromJson(res.data);
      userController.user(user);
    } on DioError catch (e) {
      onErrorToken(context);
    }
  }

  static Future getPopUp(BuildContext context) async {
    final api = Dio();
    final homeController = Get.find<HomeController>();

    try {
      api.options.headers = await header();
      Response res = await api.get("$baseUrl/pop-up");

      Popup data = Popup.fromJson(res.data);
      homeController.popupData(data.data);
    } on DioError catch (e) {
      onErrorToken(context);
    }
  }
}
