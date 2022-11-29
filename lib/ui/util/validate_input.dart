bool validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return false;
  }
  return true;
}

bool validatePassword(String? value) {
  if (value == null || value.isEmpty || value.length < 8) {
    return false;
  }
  return true;
}

bool validateName(String? value) {
  if (value == null || value.isEmpty) {
    return false;
  }
  return true;
}

bool validatePasswordConfirmation(String? value, String? password) {
  if (value == null || value.isEmpty) {
    return false;
  }

  if (value != password) {
    return false;
  }

  return true;
}
