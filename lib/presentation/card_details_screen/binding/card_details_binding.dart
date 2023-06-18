import '../controller/card_details_controller.dart';
import 'package:get/get.dart';

class CardDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardDetailsController());
  }
}
