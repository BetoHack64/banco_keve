import '../controller/notifications_controller.dart';
import '../models/notifications_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(this.notificationsItemModelObj);

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  notificationsItemModelObj.discountssalesTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOverpassBold16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Obx(
                  () => Text(
                    notificationsItemModelObj.buythestuffyouTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOverpassRegular13,
                  ),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => CustomSwitch(
            margin: getMargin(
              bottom: 23,
            ),
            value: notificationsItemModelObj.isSelectedSwitch.value,
            onChanged: (value) {
              notificationsItemModelObj.isSelectedSwitch.value = value;
            },
          ),
        ),
      ],
    );
  }
}
