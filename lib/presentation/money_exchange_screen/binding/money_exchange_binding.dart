import '../controller/money_exchange_controller.dart';
import 'package:get/get.dart';

class MoneyExchangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneyExchangeController());
  }
}
