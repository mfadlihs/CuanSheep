import 'package:shared_preferences/shared_preferences.dart';

class Usertoken {
  static Future<bool> checkToken() async {
    var storage = await SharedPreferences.getInstance();
    if (storage.getString("token") == null ||
        storage.getString("token") == "") {
      return false;
    } else {
      return true;
    }
  }

  static Future<String> getToken() async {
    var storage = await SharedPreferences.getInstance();

    if (await checkToken()) {
      return storage.getString("token")!;
    }

    return "";
  }

  static void setToken(String token) async {
    var storage = await SharedPreferences.getInstance();
    await storage.setString("token", token);
  }

  static void clearToken() async {
    var storage = await SharedPreferences.getInstance();
    storage.remove("token");
  }
}
