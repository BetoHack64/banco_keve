import '../history_screen/widgets/history_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/history_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends GetWidget<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(90),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_history".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 25, right: 24, bottom: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_electric_bill".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOverpassSemiBold30),
                            CustomImageView(
                                svgPath: ImageConstant.imgFavorite,
                                height: getVerticalSize(8),
                                width: getHorizontalSize(9),
                                margin:
                                    getMargin(left: 5, top: 19, bottom: 18)),
                            Spacer(),
                            Padding(
                                padding: getPadding(top: 17, bottom: 6),
                                child: Text("lbl_all_time".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassRegular14)),
                            CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                                height: getVerticalSize(8),
                                width: getHorizontalSize(9),
                                margin: getMargin(left: 3, top: 25, bottom: 12))
                          ]),
                      Padding(
                          padding: getPadding(left: 3, top: 21, right: 3),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding: getPadding(top: 7.0, bottom: 7.0),
                                    child: SizedBox(
                                        width: getHorizontalSize(360),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray100)));
                              },
                              itemCount: controller.historyModelObj.value
                                  .historyItemList.value.length,
                              itemBuilder: (context, index) {
                                HistoryItemModel model = controller
                                    .historyModelObj
                                    .value
                                    .historyItemList
                                    .value[index];
                                return HistoryItemWidget(model);
                              })))
                    ]))));
  }

  onBackPressed() {
    Get.back();
  }
}
