import 'package:get/get.dart';
import 'options_item_model.dart';

class HomeModel {
  Rx<List<OptionsItemModel>> optionsItemList =
      Rx(List.generate(6, (index) => OptionsItemModel()));
}
