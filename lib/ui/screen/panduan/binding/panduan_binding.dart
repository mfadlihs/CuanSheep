import 'package:cuan_sheep/ui/screen/panduan/controller/panduan_controller.dart';
import 'package:get/get.dart';

class PanduanBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PanduanController());
  }
}
