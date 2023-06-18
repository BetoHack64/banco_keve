import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/request_sent_screen/models/request_sent_model.dart';

class RequestSentController extends GetxController {
  Rx<RequestSentModel> requestSentModelObj = RequestSentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
