import '../controller/mobile_prepaid_two_controller.dart';
import 'package:get/get.dart';

class MobilePrepaidTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobilePrepaidTwoController());
  }
}
