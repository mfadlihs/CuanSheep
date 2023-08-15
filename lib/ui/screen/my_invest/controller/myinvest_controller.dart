import 'package:cuan_sheep/services/model/myinvest/my_invest.dart';
import 'package:get/get.dart';

class MyInvestController extends GetxController {
  final RxInt menu = 1.obs;

  Rxn<List<MyInvest>> data = Rxn<List<MyInvest>>();
}
