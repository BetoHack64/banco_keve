import '../controller/request_sent_controller.dart';
import 'package:get/get.dart';

class RequestSentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestSentController());
  }
}
