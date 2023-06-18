import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/money_exchange_screen/models/money_exchange_model.dart';
import 'package:flutter/material.dart';

class MoneyExchangeController extends GetxController {
  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  Rx<MoneyExchangeModel> moneyExchangeModelObj = MoneyExchangeModel().obs;

  DateTime selectedopenDatePickerDialogDate = DateTime.now();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceController.dispose();
    priceOneController.dispose();
  }
}
