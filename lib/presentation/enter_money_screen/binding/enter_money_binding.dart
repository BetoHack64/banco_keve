import '../controller/enter_money_controller.dart';
import 'package:get/get.dart';

class EnterMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterMoneyController());
  }
}
