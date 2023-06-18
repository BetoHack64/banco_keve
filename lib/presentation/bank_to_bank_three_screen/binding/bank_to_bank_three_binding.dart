import '../controller/bank_to_bank_three_controller.dart';
import 'package:get/get.dart';

class BankToBankThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankToBankThreeController());
  }
}
