import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/activity_page/models/activity_model.dart';

class ActivityController extends GetxController {
  ActivityController(this.activityModelObj);

  Rx<ActivityModel> activityModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
