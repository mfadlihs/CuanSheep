import 'package:cuan_sheep/ui/screen/my_invest/controller/myinvest_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class MyInvestBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyInvestController());
  }
}
