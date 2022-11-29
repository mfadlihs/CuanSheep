import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/data/transaction_method_data.dart';
import 'package:get/get.dart';

class InvestasiController extends GetxController {
  Rx<MethodTransaction> method_transaction =
      MethodTransaction(image: ImageAsset.briva_va, text: "BRIVA").obs;

  RxInt unit = 0.obs;

  RxBool isReadTerms = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeMethodTransaction(String image, String text) {
    method_transaction(MethodTransaction(image: image, text: text));
    update();
  }
}
