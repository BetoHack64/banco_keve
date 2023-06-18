import '../controller/bil_payment_success_controller.dart';
import 'package:get/get.dart';

class BilPaymentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BilPaymentSuccessController());
  }
}
