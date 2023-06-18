import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
import 'package:flutter/material.dart';

class MobilePrepaidOneController extends GetxController {
  TextEditingController group18263Controller = TextEditingController();

  Rx<MobilePrepaidOneModel> mobilePrepaidOneModelObj =
      MobilePrepaidOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group18263Controller.dispose();
  }
}
