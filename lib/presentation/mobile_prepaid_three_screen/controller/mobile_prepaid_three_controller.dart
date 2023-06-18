import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/mobile_prepaid_three_screen/models/mobile_prepaid_three_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class MobilePrepaidThreeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<MobilePrepaidThreeModel> mobilePrepaidThreeModelObj =
      MobilePrepaidThreeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
