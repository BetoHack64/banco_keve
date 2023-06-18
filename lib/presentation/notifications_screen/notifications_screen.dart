import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notifications".tr)),
            body: Padding(
                padding: getPadding(left: 27, top: 34, right: 27),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(25));
                    },
                    itemCount: controller.notificationsModelObj.value
                        .notificationsItemList.value.length,
                    itemBuilder: (context, index) {
                      NotificationsItemModel model = controller
                          .notificationsModelObj
                          .value
                          .notificationsItemList
                          .value[index];
                      return NotificationsItemWidget(model);
                    })))));
  }

  onBackPressed() {
    Get.back();
  }
}
