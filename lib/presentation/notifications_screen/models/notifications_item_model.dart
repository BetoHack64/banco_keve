import 'package:get/get.dart';

class NotificationsItemModel {
  Rx<String> discountssalesTxt = Rx("Money Receive");

  Rx<String> buythestuffyouTxt = Rx("If anyone sent you money");

  Rx<bool> isSelectedSwitch = Rx(false);

  Rx<String>? id = Rx("");
}
