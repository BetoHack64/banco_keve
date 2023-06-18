import 'package:get/get.dart';
import 'pay_bill_item_model.dart';

class PayBillModel {
  Rx<List<PayBillItemModel>> payBillItemList =
      Rx(List.generate(4, (index) => PayBillItemModel()));
}
