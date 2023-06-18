import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/add_person_screen/models/add_person_model.dart';
import 'package:flutter/material.dart';

class AddPersonController extends GetxController {
  TextEditingController group18212Controller = TextEditingController();

  TextEditingController group18211Controller = TextEditingController();

  Rx<AddPersonModel> addPersonModelObj = AddPersonModel().obs;

  Rx<bool> isCheckbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group18212Controller.dispose();
    group18211Controller.dispose();
  }
}
