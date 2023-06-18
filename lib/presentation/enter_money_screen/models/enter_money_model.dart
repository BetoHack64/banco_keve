import 'package:get/get.dart';
import 'enter_money_item_model.dart';

class EnterMoneyModel {
  Rx<List<EnterMoneyItemModel>> enterMoneyItemList =
      Rx(List.generate(2, (index) => EnterMoneyItemModel()));
}
