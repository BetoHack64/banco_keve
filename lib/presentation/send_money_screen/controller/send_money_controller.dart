import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/send_money_screen/models/send_money_model.dart';

class SendMoneyController extends GetxController {
  Rx<SendMoneyModel> sendMoneyModelObj = SendMoneyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
