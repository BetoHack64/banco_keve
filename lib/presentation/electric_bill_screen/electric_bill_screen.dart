import '../electric_bill_screen/widgets/electric_bill_item_widget.dart';
import 'controller/electric_bill_controller.dart';
import 'models/electric_bill_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ElectricBillScreen extends GetWidget<ElectricBillController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(44),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_electricity_bil2".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 26, top: 36, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 1),
                                  child: Text("lbl_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassRegular16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group18247Controller,
                                  hintText: "lbl_name_here".tr,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  variant: TextFormFieldVariant.OutlineGray400),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("lbl_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassRegular16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group18248Controller,
                                  hintText: "lbl_address_here".tr,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  variant: TextFormFieldVariant.OutlineGray400),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("lbl_phone".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassRegular16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group18249Controller,
                                  hintText: "lbl_phone_here".tr,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  variant: TextFormFieldVariant.OutlineGray400,
                                  textInputType: TextInputType.phone),
                              Padding(
                                  padding: getPadding(left: 1, top: 25),
                                  child: Text("lbl_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassRegular16)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group18250Controller,
                                  hintText: "msg_enter_your_bill".tr,
                                  margin: getMargin(left: 1, top: 5, right: 27),
                                  variant: TextFormFieldVariant.OutlineGray400,
                                  padding: TextFormFieldPadding.PaddingT17),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 26, right: 27),
                                  child: Row(children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_from".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOverpassRegular16),
                                          CustomTextFormField(
                                              width: getHorizontalSize(168),
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .group18251Controller,
                                              hintText: "lbl_date".tr,
                                              margin: getMargin(top: 5),
                                              variant: TextFormFieldVariant
                                                  .OutlineGray400)
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 24),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_to".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOverpassRegular16),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(168),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .group18252Controller,
                                                  hintText: "lbl_date".tr,
                                                  margin: getMargin(top: 5),
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray400)
                                            ]))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 30),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.whiteA700,
                                      indent: getHorizontalSize(1),
                                      endIndent: getHorizontalSize(27))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 21, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 9),
                                            child: Text("lbl_electric_fee".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOverpassRegular16)),
                                        Text("lbl_0".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold30)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.whiteA700,
                                      endIndent: getHorizontalSize(28))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 6, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 16),
                                            child: Text("lbl_tax".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOverpassRegular16)),
                                        Text("lbl_0".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold30)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.whiteA700,
                                      endIndent: getHorizontalSize(28))),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 6, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 9),
                                            child: Text("lbl_total".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOverpassRegular16)),
                                        Text("lbl_0".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold30)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.whiteA700,
                                      endIndent: getHorizontalSize(28))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.group2818Controller,
                                  hintText: "lbl_otp".tr,
                                  margin:
                                      getMargin(left: 1, top: 10, right: 27),
                                  variant:
                                      TextFormFieldVariant.UnderLineWhiteA700,
                                  fontStyle: TextFormFieldFontStyle
                                      .OverpassSemiBold16Teal300,
                                  textInputAction: TextInputAction.done),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 61, right: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_select_card".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold26),
                                        Padding(
                                            padding: getPadding(top: 11),
                                            child: Text("lbl_add_card".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOverpassBold16Bluegray900))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(170),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(left: 1, top: 20),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(20));
                                          },
                                          itemCount: controller
                                              .electricBillModelObj
                                              .value
                                              .electricBillItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            ElectricBillItemModel model =
                                                controller
                                                    .electricBillModelObj
                                                    .value
                                                    .electricBillItemList
                                                    .value[index];
                                            return ElectricBillItemWidget(
                                                model);
                                          }))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(58),
                text: "lbl_send_otp".tr.toUpperCase(),
                margin: getMargin(left: 27, right: 28, bottom: 50),
                onTap: () {
                  onTapSendotp();
                })));
  }

  onTapSendotp() {
    Get.toNamed(
      AppRoutes.bilPaymentSuccessScreen,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
