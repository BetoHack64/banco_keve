import '../controller/add_person_controller.dart';
import 'package:get/get.dart';

class AddPersonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPersonController());
  }
}
