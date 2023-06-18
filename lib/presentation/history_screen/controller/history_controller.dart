import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/history_screen/models/history_model.dart';

class HistoryController extends GetxController {
  Rx<HistoryModel> historyModelObj = HistoryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
