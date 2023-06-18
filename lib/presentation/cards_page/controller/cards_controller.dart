import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/cards_page/models/cards_model.dart';

class CardsController extends GetxController {
  CardsController(this.cardsModelObj);

  Rx<CardsModel> cardsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
