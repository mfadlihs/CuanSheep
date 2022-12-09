import 'dart:convert';

import 'package:cuan_sheep/services/api/token.dart';
import 'package:cuan_sheep/services/model/User/user.dart';
import 'package:cuan_sheep/services/model/panduan/panduan.dart';
import 'package:cuan_sheep/services/model/panduan/panduan_response.dart';
import 'package:cuan_sheep/services/model/payment/payment.dart';
import 'package:cuan_sheep/services/model/payment/payment_response.dart';
import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/services/model/pen/pen_detail_response.dart';
import 'package:cuan_sheep/services/model/pen/pen_response.dart';
import 'package:cuan_sheep/services/model/popup/popup.dart';
import 'package:cuan_sheep/services/model/predict/predict_response.dart';
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
  }

  static Future<Map<String, dynamic>> header() async {
    return {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": await Usertoken.getToken(),
    };
  }

  static onErrorToken(BuildContext context) {
    showAlert("error token, please refresh or logout", context, isFalse: true);
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

  static void checkValidToken(BuildContext context) async {
    final api = Dio();
    UserData user;
    final userController = Get.find<UserController>();

    try {
      api.options.headers = await header();
      Response res = await api.get("$baseUrl/user");

      user = UserData.fromJson(res.data);
      userController.user(user);
    } on DioError catch (e) {
      Usertoken.clearToken();
    }
  }

  static Future<UserData> getUser(BuildContext context) async {
    final api = Dio();
    UserData user;

    try {
      api.options.headers = await header();
      Response res = await api.get("$baseUrl/user");

      user = UserData.fromJson(res.data);
      return user;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }

  static Future<List<PopupData>> getPopUp(BuildContext context) async {
    final api = Dio();

    try {
      api.options.headers = await header();
      Response res = await api.get("$baseUrl/pop-up");

      Popup data = Popup.fromJson(res.data);
      return data.data;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }

  static Future<List<Pen>> getPens(BuildContext context) async {
    final api = Dio();
    try {
      api.options.headers = await header();
      Response request = await api.get("$baseUrl/kandang");

      PenResponse response = PenResponse.fromJson(request.data);
      return response.data;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }

  static Future<Pen> getPenDetail(BuildContext context, String id) async {
    final api = Dio();
    try {
      api.options.headers = await header();
      Response request = await api.get("$baseUrl/kandang/$id");

      PenDetailResponse response = PenDetailResponse.fromJson(request.data);
      return response.data;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }

  static Future<List<Panduan>> getPanduan(BuildContext context) async {
    final api = Dio();

    try {
      api.options.headers = await header();
      Response request = await api.get("$baseUrl/panduan");

      PanduanResponse response = PanduanResponse.fromJson(request.data);
      return response.data;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }

  static Future<num> postPrediksi(
      BuildContext context, int id, num nominal) async {
    final api = Dio();

    try {
      api.options.headers = await header();
      Response request = await api.post(
        "$baseUrl/prediksi",
        data: jsonEncode(
          {
            "id_kandang": id,
            "nominal": nominal,
          },
        ),
      );

      PredictResponse response = PredictResponse.fromJson(request.data);
      return response.prediksi;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }

  static Future<List<Payment>> getPaymentDetail(
      BuildContext context, num farmerId) async {
    final api = Dio();

    try {
      api.options.headers = await header();
      Response request = await api.get("$baseUrl/rekening/$farmerId");

      PaymentResponse response = PaymentResponse.fromJson(request.data);
      return response.payment;
    } on DioError catch (e) {
      return onErrorToken(context);
    }
  }
}
