import '../controller/money_sent_success_controller.dart';
import 'package:get/get.dart';

class MoneySentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneySentSuccessController());
  }
}
