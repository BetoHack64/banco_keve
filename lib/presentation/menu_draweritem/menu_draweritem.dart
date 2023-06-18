import 'controller/menu_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: getHorizontalSize(335),
            padding: getPadding(left: 24, top: 70, right: 24, bottom: 77),
            decoration: AppDecoration.bg,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse108,
                      height: getSize(85),
                      width: getSize(85),
                      radius: BorderRadius.circular(getHorizontalSize(42))),
                  Padding(
                      padding: getPadding(top: 13),
                      child: Text("lbl_suzane_jobs".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassSemiBold30)),
                  Padding(
                      padding: getPadding(top: 6),
                      child: Text("lbl_user_gmail_com".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassRegular16Gray700)),
                  GestureDetector(
                      onTap: () {
                        onTapEdit();
                      },
                      child: Padding(
                          padding: getPadding(left: 2, top: 43),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUser14x12,
                                height: getVerticalSize(14),
                                width: getHorizontalSize(12),
                                margin: getMargin(top: 5, bottom: 4)),
                            Padding(
                                padding: getPadding(left: 17),
                                child: Text("lbl_edit_profile".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtOverpassSemiBold16Gray900))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapTransaction();
                      },
                      child: Padding(
                          padding: getPadding(left: 1, top: 44),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgClock16x16,
                                height: getSize(16),
                                width: getSize(16),
                                margin: getMargin(bottom: 2)),
                            Padding(
                                padding: getPadding(left: 15),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_history2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Overpass',
                                              fontWeight: FontWeight.w600)),
                                      TextSpan(
                                          text: "lbl_8".tr,
                                          style: TextStyle(
                                              color: ColorConstant.gray200,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Overpass',
                                              fontWeight: FontWeight.w600))
                                    ]),
                                    textAlign: TextAlign.left))
                          ]))),
                  GestureDetector(
                      onTap: () {
                        onTapSettings();
                      },
                      child: Padding(
                          padding: getPadding(left: 1, top: 43),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings16x16,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(top: 2, bottom: 6)),
                                Padding(
                                    padding: getPadding(left: 15),
                                    child: Text("msg_notifications_s".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassSemiBold16Gray900))
                              ]))),
                  Padding(
                      padding: getPadding(top: 41, bottom: 310),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgFavorite15x17,
                                height: getVerticalSize(15),
                                width: getHorizontalSize(17),
                                margin: getMargin(top: 3, bottom: 6)),
                            Padding(
                                padding: getPadding(left: 16),
                                child: Text("lbl_share_app".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtOverpassSemiBold16Gray900))
                          ]))
                ])));
  }

  onTapEdit() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  onTapTransaction() {
    Get.toNamed(
      AppRoutes.historyScreen,
    );
  }

  onTapSettings() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
