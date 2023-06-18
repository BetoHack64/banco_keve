import '../controller/recharge_success_controller.dart';
import 'package:get/get.dart';

class RechargeSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RechargeSuccessController());
  }
}
