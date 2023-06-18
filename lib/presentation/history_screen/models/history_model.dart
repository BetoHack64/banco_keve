import 'package:get/get.dart';
import 'history_item_model.dart';

class HistoryModel {
  Rx<List<HistoryItemModel>> historyItemList =
      Rx(List.generate(8, (index) => HistoryItemModel()));
}
