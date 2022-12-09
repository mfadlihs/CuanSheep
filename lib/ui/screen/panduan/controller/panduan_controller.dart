import 'package:cuan_sheep/services/model/panduan/panduan.dart';
import 'package:get/get.dart';

class PanduanController extends GetxController {
  RxList<Panduan> panduan = <Panduan>[].obs;

  RxMap<String, Panduan> detail = <String, Panduan>{}.obs;
}
