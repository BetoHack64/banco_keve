import 'package:get/get.dart';
import 'money_exchange_item_model.dart';

class MoneyExchangeModel {
  Rx<List<MoneyExchangeItemModel>> moneyExchangeItemList =
      Rx(List.generate(7, (index) => MoneyExchangeItemModel()));
}
