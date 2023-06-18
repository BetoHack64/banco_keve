import '../controller/mobile_prepaid_three_controller.dart';
import 'package:get/get.dart';

class MobilePrepaidThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobilePrepaidThreeController());
  }
}
