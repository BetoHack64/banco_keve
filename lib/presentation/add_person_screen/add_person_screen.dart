import 'controller/add_person_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_checkbox.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddPersonScreen extends GetWidget<AddPersonController> {
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
                title: AppbarTitle(text: "lbl_new_contact".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 34, right: 27, bottom: 34),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgUser100x100,
                          height: getSize(100),
                          width: getSize(100),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Text("lbl_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group18212Controller,
                          hintText: "lbl_user_name".tr,
                          margin: getMargin(top: 5)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_card_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group18211Controller,
                          hintText: "lbl_card_number".tr,
                          margin: getMargin(top: 5),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number),
                      Obx(() => CustomCheckbox(
                          text: "lbl_save_on_list".tr,
                          value: controller.isCheckbox.value,
                          margin: getMargin(top: 16),
                          fontStyle: CheckboxFontStyle.OverpassRegular16Gray600,
                          onChange: (value) {
                            controller.isCheckbox.value = value;
                          })),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_save".tr.toUpperCase(),
                          margin: getMargin(top: 36, bottom: 5),
                          variant: ButtonVariant.FillGray7007e,
                          onTap: () {
                            onTapSave();
                          })
                    ]))));
  }

  onTapSave() {
    Get.toNamed(
      AppRoutes.addCardOneScreen,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
