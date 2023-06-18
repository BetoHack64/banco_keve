import '../controller/electric_bill_controller.dart';
import 'package:get/get.dart';

class ElectricBillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElectricBillController());
  }
}
