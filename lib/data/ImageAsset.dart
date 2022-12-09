import 'package:cuan_sheep/data/transaction_method_data.dart';

class ImageAsset {
  static final methodTransaction = <MethodGroup>[
    MethodGroup(title: "Virtual Account", data: [
      MethodTransaction(image: mandiri_va, text: "Mandiri Virtual Account"),
      MethodTransaction(image: bca_va, text: "Bank BCA Virtual Account"),
      MethodTransaction(image: briva_va, text: "BRIVA"),
      MethodTransaction(image: bni_va, text: "BNI Virtual Account"),
      MethodTransaction(image: btn_va, text: "BTN Virtual Account"),
      MethodTransaction(image: danamon_va, text: "Danamon Virtual Account"),
    ]),
    MethodGroup(title: "Transfer Bank", data: [
      MethodTransaction(
        image: bca_bank,
        text: "Bank BCA",
      ),
      MethodTransaction(
        image: bni_bank,
        text: "Bank BNI",
      ),
      MethodTransaction(
        image: bri_bank,
        text: "Bank BRI",
      )
    ]),
    MethodGroup(title: "Tunai", data: [
      MethodTransaction(
        image: alfamart,
        text: "Alfamart",
      ),
      MethodTransaction(
        image: indomart,
        text: "Indomart",
      ),
      MethodTransaction(
        image: kantorpos,
        text: "Kantorpos",
      ),
    ])
  ];

  static String bank(String bank) {
    return 'assets/images/payment/${bank.toLowerCase()}.png';
  }

  static String briva_va = 'assets/images/payment/briva_va.png';
  static String bca_va = 'assets/images/payment/bca_va.png';
  static String bni_va = 'assets/images/payment/bni_va.png';
  static String btn_va = 'assets/images/payment/btn_va.png';
  static String danamon_va = 'assets/images/payment/danamon_va.png';
  static String mandiri_va = 'assets/images/payment/mandiri_va.png';
  static String bca_bank = 'assets/images/payment/bca_bank.png';
  static String bni_bank = 'assets/images/payment/bni_bank.png';
  static String bri_bank = 'assets/images/payment/bri_bank.png';
  static String alfamart = 'assets/images/payment/alfamart.png';
  static String indomart = 'assets/images/payment/indomart.png';
  static String kantorpos = 'assets/images/payment/kantorpos.png';

  static String statusInvestasi = "assets/images/status_transaksi.png";
  static String domba = "assets/images/domba.jpg";
  static String profilePicture = "assets/images/profile_picture.jpg";
  static String imageInvestProfileCard =
      "assets/images/invest_profile_card.jpg";

  static String ulasanPicture = "assets/images/ulasan_profile.png";
  static String map = "assets/images/map.jpg";
}

class MethodGroup {
  final String title;
  final List<MethodTransaction> data;

  MethodGroup({required this.title, required this.data});
}
