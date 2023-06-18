import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/receive_money_request_page/models/receive_money_request_model.dart';
import 'package:flutter/material.dart';

class ReceiveMoneyRequestController extends GetxController {
  ReceiveMoneyRequestController(this.receiveMoneyRequestModelObj);

  TextEditingController group18209Controller = TextEditingController();

  TextEditingController group18210Controller = TextEditingController();

  TextEditingController group18208Controller = TextEditingController();

  TextEditingController group18208OneController = TextEditingController();

  TextEditingController group18207Controller = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  TextEditingController group2810Controller = TextEditingController();

  Rx<ReceiveMoneyRequestModel> receiveMoneyRequestModelObj;

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
    group18208OneController.dispose();
    group18207Controller.dispose();
    priceController.dispose();
    priceOneController.dispose();
    group2810Controller.dispose();
  }
}
