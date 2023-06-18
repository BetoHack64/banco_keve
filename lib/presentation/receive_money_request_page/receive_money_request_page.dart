import 'controller/receive_money_request_controller.dart';
import 'models/receive_money_request_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReceiveMoneyRequestPage extends StatelessWidget {
  ReceiveMoneyRequestController controller =
      Get.put(ReceiveMoneyRequestController(ReceiveMoneyRequestModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 27, top: 25, right: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(right: 12),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_first_name".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOverpassRegular16),
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        focusNode: FocusNode(),
                                                        controller: controller
                                                            .group18209Controller,
                                                        hintText: "lbl_name".tr,
                                                        margin:
                                                            getMargin(top: 5))
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
                                                    Text("lbl_last_name".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOverpassRegular16),
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                168),
                                                        focusNode: FocusNode(),
                                                        controller: controller
                                                            .group18210Controller,
                                                        hintText: "lbl_name".tr,
                                                        margin:
                                                            getMargin(top: 5))
                                                  ])))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 26),
                                    child: Text("lbl_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassRegular16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.group18208Controller,
                                    hintText: "lbl_your_email_here".tr,
                                    margin: getMargin(top: 5),
                                    textInputType: TextInputType.emailAddress),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_company_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassRegular16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.group18208OneController,
                                    hintText: "msg_company_name_he".tr,
                                    margin: getMargin(top: 7)),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_country".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassRegular16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.group18207Controller,
                                    hintText: "lbl_select_country".tr,
                                    margin: getMargin(top: 3)),
                                Padding(
                                    padding: getPadding(top: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 12),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_ammount".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOverpassRegular16),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .priceController,
                                                            hintText:
                                                                "lbl_0_00".tr,
                                                            margin: getMargin(
                                                                top: 5))
                                                      ]))),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 12, top: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_currency".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOverpassRegular16),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    168),
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .priceOneController,
                                                            hintText:
                                                                "lbl_usd".tr,
                                                            margin: getMargin(
                                                                top: 3))
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Text("lbl_massage".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassRegular16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.group2810Controller,
                                    hintText: "msg_write_a_short_n".tr,
                                    margin: getMargin(top: 3),
                                    textInputAction: TextInputAction.done),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 30),
                                        padding: getPadding(
                                            left: 83,
                                            top: 37,
                                            right: 83,
                                            bottom: 37),
                                        decoration:
                                            AppDecoration.outlineGray400,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("msg_attach_file_opt".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOverpassBold20Gray400),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgFile26x20,
                                                  height: getVerticalSize(26),
                                                  width: getHorizontalSize(20),
                                                  margin: getMargin(
                                                      top: 7, bottom: 2))
                                            ]))),
                                CustomButton(
                                    height: getVerticalSize(58),
                                    text: "lbl_send".tr.toUpperCase(),
                                    margin: getMargin(top: 42),
                                    variant: ButtonVariant.FillGray7007e,
                                    padding: ButtonPadding.PaddingAll16,
                                    onTap: () {
                                      onTapSend();
                                    })
                              ]))
                    ])))));
  }

  onTapSend() {
    Get.toNamed(
      AppRoutes.requestSentScreen,
    );
  }
}
