class RoutePath {
  static const String splash = '/splash';
  static const String launch = '/launch';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';

  static const String panduan = '/panduan';
  static const String panduanInvestasi = '/investasiiii';
  static const String panduanSyarat = '/panduan/sk';
  // static const String panduanFaq = '/panduan/:detail';
  static String panduanDetail({String params = ":detail"}) {
    return '/panduan/$params';
  }

  static const String investasi = '/investasi';
  static const String investasiRegular = '/investasi/regular';
  static const String investasiTahunan = '/investasi/tahunan';
  static String investasiForm({dynamic id = ":id"}) {
    return '/investasi/form/$id';
  }

  static const String investasiSk = '/investasi/sk';
  // static const String investasiMetode = '/investasi/metode';
  static String investasiMetode({dynamic farmerId = ":farmerId"}) {
    return '/investasi/metode/$farmerId';
  }

  // static const String investasiDetail = '/investasi/detail';
  static String investasiDetail(
      {dynamic id = ":id", dynamic farmerId = ":farmerId"}) {
    return '/investasi/detail/$id/$farmerId';
  }

  static const String investasiStatus = '/investasi/status';

  static const String profile = "/profile";
  static const String profileDetail = "/profile/detail";
  static const String profileChat = "/profile/chat";

  static const String myInvest = "/myinvest";
}
