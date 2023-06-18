import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/enter_money_screen/models/enter_money_model.dart';
import 'package:flutter/material.dart';

class EnterMoneyController extends GetxController {
  TextEditingController massageboxController = TextEditingController();

  Rx<EnterMoneyModel> enterMoneyModelObj = EnterMoneyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    massageboxController.dispose();
  }
}
