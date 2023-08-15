import 'dart:io';

import 'package:cuan_sheep/data/ImageAsset.dart';
import 'package:cuan_sheep/data/transaction_method_data.dart';
import 'package:cuan_sheep/services/model/payment/payment.dart';
import 'package:cuan_sheep/services/model/pen/pen.dart';
import 'package:cuan_sheep/services/model/postInvest/post_invest.dart';
import 'package:get/get.dart';
import '../../../util/default_map.dart';

class InvestasiController extends GetxController {
  Rx<MethodTransaction> method_transaction =
      MethodTransaction(image: "", text: "").obs;

  RxInt unit = 0.obs;

  RxList<Pen> pens = <Pen>[].obs;

  RxMap<String, Pen> penDetail = <String, Pen>{}.obs;

  RxMap<String, List<Payment>> paymentDetail = <String, List<Payment>>{}.obs;

  RxInt totalInvest = 0.obs;

  RxBool isReadTerms = false.obs;

  Rx<Payment> choosedPayment = Payment.initValue().obs;

  RxnInt itung = RxnInt();

  Rxn<PostInvest> postInvest = Rxn<PostInvest>();

  void changeMethodTransaction(String image, String text) {
    method_transaction(MethodTransaction(image: image, text: text));
    update();
  }

  Pen getPenDetail(String id) {
    return penDetail.value.getOrElse(id, Pen.initValue());
  }

  List<Payment> getPaymentDetail(String id) {
    return paymentDetail.value.getOrElse(id, <Payment>[]);
  }
}

class RxNullable<T> {
  Rx<T> setNull() => (null as T).obs;
}
