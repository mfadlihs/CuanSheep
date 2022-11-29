import 'package:get/get.dart';

class SignupController extends GetxController {
  RxString email = "".obs;
  RxString firstName = "".obs;
  RxString lastName = "".obs;
  RxString password = "".obs;
  RxString passwordVerification = "".obs;

  RxString emailHint = "Email".obs;
}
