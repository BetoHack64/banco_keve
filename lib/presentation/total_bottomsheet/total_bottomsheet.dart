import 'controller/total_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TotalBottomsheet extends StatelessWidget {
  TotalBottomsheet(this.controller);

  TotalController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 15, right: 27, bottom: 15),
                decoration: AppDecoration.bg
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: getHorizontalSize(60),
                          child: Divider(
                              height: getVerticalSize(4),
                              thickness: getVerticalSize(4),
                              color: ColorConstant.gray800)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("lbl_money_transfer".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold20)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 35, right: 97),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse890x90,
                                        height: getSize(90),
                                        width: getSize(90),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(45))),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 16, bottom: 23),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_kate_morgan".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOverpassBold26),
                                              Padding(
                                                  padding: getPadding(left: 2),
                                                  child: Text(
                                                      "lbl_159_107_1365".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOverpassRegular12Gray900))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 7, bottom: 7),
                                    child: Text("lbl_total".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassRegular16Gray900)),
                                Text("lbl_60_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassBold26)
                              ])),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray20001)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 7, bottom: 7),
                                    child: Text("lbl_vat".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassRegular16Gray900)),
                                Text("lbl_2_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassBold26)
                              ])),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray20001)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 9, bottom: 8),
                                    child: Text("msg_card_new_balanc".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassRegular14Gray900)),
                                Text("lbl_1168_25".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassBold26)
                              ])),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray20001)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_from_suzane".tr,
                          margin: getMargin(top: 54),
                          variant: ButtonVariant.OutlineGray400,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.OverpassRegular12Gray900),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_send2".tr.toUpperCase(),
                          margin: getMargin(top: 40, bottom: 25),
                          onTap: () {
                            onTapSend();
                          })
                    ]))));
  }

  onTapSend() {
    Get.toNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
