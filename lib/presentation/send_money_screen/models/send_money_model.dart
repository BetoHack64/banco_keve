import 'package:get/get.dart';
import 'profile_item_model.dart';
import 'lista_item_model.dart';

class SendMoneyModel {
  Rx<List<ProfileItemModel>> profileItemList =
      Rx(List.generate(5, (index) => ProfileItemModel()));

  Rx<List<ListaItemModel>> listaItemList =
      Rx(List.generate(2, (index) => ListaItemModel()));
}
