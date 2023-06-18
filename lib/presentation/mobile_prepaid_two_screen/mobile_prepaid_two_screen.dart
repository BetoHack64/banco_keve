import 'controller/mobile_prepaid_two_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MobilePrepaidTwoScreen extends GetWidget<MobilePrepaidTwoController> {
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
                title: AppbarTitle(text: "lbl_mobile_prepaid2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 34, right: 47, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse11360x60,
                          height: getSize(60),
                          width: getSize(60),
                          radius: BorderRadius.circular(getHorizontalSize(30))),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_adom_shafi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassExtraBold28)),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Text("lbl_01704889390".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular14)),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("msg_enter_the_ammou".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("msg_enter_ammount_y".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular14)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.ammountController,
                          hintText: "lbl_50".tr,
                          margin: getMargin(top: 22),
                          variant: TextFormFieldVariant.OutlineBluegray900,
                          fontStyle:
                              TextFormFieldFontStyle.OverpassBold20Gray900,
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_continue2".tr.toUpperCase(),
                          margin: getMargin(top: 20, bottom: 5),
                          onTap: () {
                            onTapContinue();
                          })
                    ]))));
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.mobilePrepaidThreeScreen,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
