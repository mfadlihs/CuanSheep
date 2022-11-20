import 'package:cuan_sheep/ui/util/validate_input.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider with ChangeNotifier {
  String _email = '';
  bool isValidEmail = true;

  String _password = '';
  bool isValidPassword = true;

  String get password => _password;
  String get email => _email;

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  void setIsValidPassword(String value) {
    isValidEmail = validateEmail(value);
    notifyListeners();
  }
}
