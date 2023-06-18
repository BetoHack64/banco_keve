import 'package:get/get.dart';
import 'electric_bill_item_model.dart';

class ElectricBillModel {
  Rx<List<ElectricBillItemModel>> electricBillItemList =
      Rx(List.generate(2, (index) => ElectricBillItemModel()));
}
