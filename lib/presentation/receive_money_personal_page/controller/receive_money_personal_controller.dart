import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/receive_money_personal_page/models/receive_money_personal_model.dart';
import 'package:flutter/material.dart';

class ReceiveMoneyPersonalController extends GetxController {
  ReceiveMoneyPersonalController(this.receiveMoneyPersonalModelObj);

  TextEditingController group18209Controller = TextEditingController();

  TextEditingController group18210Controller = TextEditingController();

  TextEditingController group18208Controller = TextEditingController();

  TextEditingController group18207Controller = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  TextEditingController group2814Controller = TextEditingController();

  Rx<ReceiveMoneyPersonalModel> receiveMoneyPersonalModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group18209Controller.dispose();
    group18210Controller.dispose();
    group18208Controller.dispose();
    group18207Controller.dispose();
    priceController.dispose();
    priceOneController.dispose();
    group2814Controller.dispose();
  }
}
