import '../enter_money_screen/widgets/enter_money_item_widget.dart';
import 'controller/enter_money_controller.dart';
import 'models/enter_money_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EnterMoneyScreen extends GetWidget<EnterMoneyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(61),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_money_transfer".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgPlus,
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6),
                      onTap: () {
                        onTapPlus2();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 34, bottom: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse8130x130,
                          height: getSize(130),
                          width: getSize(130),
                          radius: BorderRadius.circular(getHorizontalSize(65))),
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("lbl_kate_morgan".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Padding(
                          padding: getPadding(top: 1),
                          child: Text("lbl_159_107_1365".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular12Gray900)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_60_00".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold60)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.massageboxController,
                          hintText: "msg_type_your_massa".tr,
                          margin: getMargin(left: 27, top: 27, right: 27),
                          variant: TextFormFieldVariant.OutlineGray400,
                          padding: TextFormFieldPadding.PaddingAll14,
                          fontStyle:
                              TextFormFieldFontStyle.OverpassRegular12Gray700,
                          textInputAction: TextInputAction.done),
                      Padding(
                          padding: getPadding(left: 27, top: 36, right: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  padding: getPadding(left: 27, top: 20),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20));
                                  },
                                  itemCount: controller.enterMoneyModelObj.value
                                      .enterMoneyItemList.value.length,
                                  itemBuilder: (context, index) {
                                    EnterMoneyItemModel model = controller
                                        .enterMoneyModelObj
                                        .value
                                        .enterMoneyItemList
                                        .value[index];
                                    return EnterMoneyItemWidget(model);
                                  }))))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(58),
                text: "lbl_continue".tr.toUpperCase(),
                margin: getMargin(left: 27, right: 28, bottom: 29),
                onTap: () {
                  onTapContinue();
                })));
  }

  onTapContinue() {
    Get.toNamed(
      AppRoutes.sendMoneyEnterPasswordScreen,
    );
  }

  onBackPressed() {
    Get.back();
  }

  onTapPlus2() {
    Get.toNamed(
      AppRoutes.addPersonScreen,
    );
  }
}
