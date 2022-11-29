import 'package:cuan_sheep/ui/screen/investasi/controller/investasi_controller.dart';
import 'package:get/get.dart';

class InvestasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InvestasiController());
    // Get.lazyPut<InvestasiController>(() => InvestasiController());
  }
}
