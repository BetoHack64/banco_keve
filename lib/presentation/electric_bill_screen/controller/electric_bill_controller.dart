import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/electric_bill_screen/models/electric_bill_model.dart';
import 'package:flutter/material.dart';

class ElectricBillController extends GetxController {
  TextEditingController group18247Controller = TextEditingController();

  TextEditingController group18248Controller = TextEditingController();

  TextEditingController group18249Controller = TextEditingController();

  TextEditingController group18250Controller = TextEditingController();

  TextEditingController group18251Controller = TextEditingController();

  TextEditingController group18252Controller = TextEditingController();

  TextEditingController group2818Controller = TextEditingController();

  Rx<ElectricBillModel> electricBillModelObj = ElectricBillModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group18247Controller.dispose();
    group18248Controller.dispose();
    group18249Controller.dispose();
    group18250Controller.dispose();
    group18251Controller.dispose();
    group18252Controller.dispose();
    group2818Controller.dispose();
  }
}
