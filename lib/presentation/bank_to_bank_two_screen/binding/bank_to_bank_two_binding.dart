import '../controller/bank_to_bank_two_controller.dart';
import 'package:get/get.dart';

class BankToBankTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankToBankTwoController());
  }
}
