import '../controller/mobile_prepaid_one_controller.dart';
import 'package:get/get.dart';

class MobilePrepaidOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MobilePrepaidOneController());
  }
}
