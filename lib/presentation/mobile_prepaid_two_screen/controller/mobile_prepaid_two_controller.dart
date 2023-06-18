import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/mobile_prepaid_two_screen/models/mobile_prepaid_two_model.dart';
import 'package:flutter/material.dart';

class MobilePrepaidTwoController extends GetxController {
  TextEditingController ammountController = TextEditingController();

  Rx<MobilePrepaidTwoModel> mobilePrepaidTwoModelObj =
      MobilePrepaidTwoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    ammountController.dispose();
  }
}
