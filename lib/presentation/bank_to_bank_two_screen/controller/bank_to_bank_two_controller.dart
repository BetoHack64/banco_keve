import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/bank_to_bank_two_screen/models/bank_to_bank_two_model.dart';
import 'package:flutter/material.dart';

class BankToBankTwoController extends GetxController {
  TextEditingController amountController = TextEditingController();

  Rx<BankToBankTwoModel> bankToBankTwoModelObj = BankToBankTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    amountController.dispose();
  }
}
