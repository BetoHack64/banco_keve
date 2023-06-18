import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/receive_money_request_tab_container_screen/models/receive_money_request_tab_container_model.dart';
import 'package:flutter/material.dart';

class ReceiveMoneyRequestTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ReceiveMoneyRequestTabContainerModel>
      receiveMoneyRequestTabContainerModelObj =
      ReceiveMoneyRequestTabContainerModel().obs;

  late TabController tabsController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
