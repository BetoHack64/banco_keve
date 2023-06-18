import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/menu_draweritem/models/menu_model.dart';

class MenuController extends GetxController {
  Rx<MenuModel> menuModelObj = MenuModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
