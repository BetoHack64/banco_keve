import 'package:get/get.dart';
import 'listtext_item_model.dart';

class BankToBankOneModel {
  Rx<List<ListtextItemModel>> listtextItemList =
      Rx(List.generate(2, (index) => ListtextItemModel()));
}
