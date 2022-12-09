import 'package:intl/intl.dart';

class Formatter {
  static String uang(num angka) {
    return NumberFormat.currency(locale: "id", symbol: "Rp ", decimalDigits: 0)
        .format(angka);
  }
}
