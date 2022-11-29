import 'package:cuan_sheep/services/model/User/user.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class UserController extends GetxController {
  Rx<UserData> user = UserData(
          id: 0,
          first_name: "",
          address: "",
          phone: "",
          email: "",
          activation_code: "",
          is_active: "1",
          email_verified_at: "",
          created_at: "",
          last_name: "",
          updated_at: "")
      .obs;

  String nama = "";
  InitDependency() {
    nama = "fasd asd";
  }
}
