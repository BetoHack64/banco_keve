import 'package:get/get.dart';
import 'activity_item_model.dart';

class ActivityModel {
  Rx<List<ActivityItemModel>> activityItemList =
      Rx(List.generate(2, (index) => ActivityItemModel()));
}
