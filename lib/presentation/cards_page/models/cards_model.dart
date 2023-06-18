import 'package:get/get.dart';
import 'cards_item_model.dart';

class CardsModel {
  Rx<List<CardsItemModel>> cardsItemList =
      Rx(List.generate(2, (index) => CardsItemModel()));
}
