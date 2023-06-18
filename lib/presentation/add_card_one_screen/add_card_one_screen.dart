import 'controller/add_card_one_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_checkbox.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddCardOneScreen extends GetWidget<AddCardOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                title: AppbarTitle(text: "lbl_new_card".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 30, right: 27, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassRegular16),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group18216Controller,
                          hintText: "lbl_user_name2".tr,
                          margin: getMargin(top: 5)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_card_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.cardnumberOneController,
                          hintText: "lbl_card_number".tr,
                          margin: getMargin(top: 5),
                          textInputType: TextInputType.number),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(top: 1, right: 12),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_expires".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOverpassRegular16),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(168),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .cardexpirydateController,
                                                  hintText: "lbl_date".tr,
                                                  margin: getMargin(top: 3))
                                            ]))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 12),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_cvv".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOverpassRegular16),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(168),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .cardcvvcodeController,
                                                  hintText: "lbl_code".tr,
                                                  margin: getMargin(top: 5),
                                                  textInputAction:
                                                      TextInputAction.done)
                                            ])))
                              ])),
                      Obx(() => CustomCheckbox(
                          text: "msg_save_my_card_de".tr,
                          value: controller.isCheckbox.value,
                          margin: getMargin(top: 18),
                          fontStyle: CheckboxFontStyle.OverpassRegular16Gray600,
                          onChange: (value) {
                            controller.isCheckbox.value = value;
                          })),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_save".tr.toUpperCase(),
                          margin: getMargin(top: 34, bottom: 5),
                          variant: ButtonVariant.FillGray7007e,
                          onTap: () {
                            onTapSave();
                          })
                    ]))));
  }

  onTapSave() {
    Get.toNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
