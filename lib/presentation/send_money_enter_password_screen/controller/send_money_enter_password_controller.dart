import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/send_money_enter_password_screen/models/send_money_enter_password_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class SendMoneyEnterPasswordController extends GetxController
    with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SendMoneyEnterPasswordModel> sendMoneyEnterPasswordModelObj =
      SendMoneyEnterPasswordModel().obs;

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
