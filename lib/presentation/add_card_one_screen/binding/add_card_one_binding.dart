import '../controller/add_card_one_controller.dart';
import 'package:get/get.dart';

class AddCardOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardOneController());
  }
}
