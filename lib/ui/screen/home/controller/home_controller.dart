import 'package:cuan_sheep/services/model/User/user.dart';
import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/services/model/popup/popup.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<UserData> userData = UserData.initValue().obs;
  // RxList<Pen> penData = [Pen.initValue()].obs;
  RxList<Pen> penData = <Pen>[].obs;

  // RxList<PopupData> popupData = [
  //   PopupData(id: 0, title: "", description: "", created_at: "", updated_at: "")
  // ].obs;

  RxList<PopupData> popupData = <PopupData>[].obs;
}
