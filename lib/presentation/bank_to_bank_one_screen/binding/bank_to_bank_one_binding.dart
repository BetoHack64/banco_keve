import '../controller/bank_to_bank_one_controller.dart';
import 'package:get/get.dart';

class BankToBankOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankToBankOneController());
  }
}
