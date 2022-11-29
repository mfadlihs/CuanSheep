import 'package:cuan_sheep/services/model/popup/popup.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<PopupData> popupData = [
    PopupData(id: 0, title: "", description: "", created_at: "", updated_at: "")
  ].obs;
}
