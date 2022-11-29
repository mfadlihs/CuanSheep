import 'package:cuan_sheep/services/api/token.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:get/get.dart';

void logout() {
  Usertoken.clearToken();
  Get.offAllNamed(RoutePath.login);
}
