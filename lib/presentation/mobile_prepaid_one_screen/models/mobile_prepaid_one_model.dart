import 'package:get/get.dart';
import 'profile1_item_model.dart';
import 'lista1_item_model.dart';

class MobilePrepaidOneModel {
  Rx<List<Profile1ItemModel>> profile1ItemList =
      Rx(List.generate(5, (index) => Profile1ItemModel()));

  Rx<List<Lista1ItemModel>> lista1ItemList =
      Rx(List.generate(2, (index) => Lista1ItemModel()));
}
