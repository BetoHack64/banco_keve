import 'package:get/get.dart';
import 'card_details_item_model.dart';

class CardDetailsModel {
  Rx<List<CardDetailsItemModel>> cardDetailsItemList =
      Rx(List.generate(5, (index) => CardDetailsItemModel()));
}
