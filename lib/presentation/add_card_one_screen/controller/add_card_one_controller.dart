import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/add_card_one_screen/models/add_card_one_model.dart';
import 'package:flutter/material.dart';

class AddCardOneController extends GetxController {
  TextEditingController group18216Controller = TextEditingController();

  TextEditingController cardnumberOneController = TextEditingController();

  TextEditingController cardexpirydateController = TextEditingController();

  TextEditingController cardcvvcodeController = TextEditingController();

  Rx<AddCardOneModel> addCardOneModelObj = AddCardOneModel().obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group18216Controller.dispose();
    cardnumberOneController.dispose();
    cardexpirydateController.dispose();
    cardcvvcodeController.dispose();
  }
}
