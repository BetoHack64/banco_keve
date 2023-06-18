import '../controller/activity_controller.dart';
import '../models/activity_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActivityItemWidget extends StatelessWidget {
  ActivityItemWidget(this.activityItemModelObj);

  ActivityItemModel activityItemModelObj;

  var controller = Get.find<ActivityController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            activityItemModelObj.seventeenTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtOverpassBold12Bluegray900,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 31,
          ),
          child: Obx(
            () => Text(
              activityItemModelObj.eighteenTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassBold12Bluegray900,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 28,
          ),
          child: Obx(
            () => Text(
              activityItemModelObj.nineteenTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassBold12Bluegray900,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 28,
          ),
          child: Obx(
            () => Text(
              activityItemModelObj.twentyTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassBold12Bluegray900,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 27,
          ),
          child: Obx(
            () => Text(
              activityItemModelObj.twentyOneTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassBold12Bluegray900,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
          ),
          child: Obx(
            () => Text(
              activityItemModelObj.twentyTwoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassBold12Bluegray900,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 26,
          ),
          child: Obx(
            () => Text(
              activityItemModelObj.twentyThreeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassBold12Bluegray900,
            ),
          ),
        ),
      ],
    );
  }
}
