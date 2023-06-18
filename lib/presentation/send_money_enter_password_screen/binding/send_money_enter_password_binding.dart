import '../controller/send_money_enter_password_controller.dart';
import 'package:get/get.dart';

class SendMoneyEnterPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendMoneyEnterPasswordController());
  }
}
