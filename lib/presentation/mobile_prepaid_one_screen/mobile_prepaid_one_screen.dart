import '../mobile_prepaid_one_screen/widgets/lista1_item_widget.dart';
import '../mobile_prepaid_one_screen/widgets/profile1_item_widget.dart';
import 'controller/mobile_prepaid_one_controller.dart';
import 'models/lista1_item_model.dart';
import 'models/profile1_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MobilePrepaidOneScreen extends GetWidget<MobilePrepaidOneController> {
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
                padding: getPadding(left: 7, right: 7),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 20, top: 31),
                          child: Text("lbl_prepaid_to".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.group18263Controller,
                          hintText: "lbl_name_or_number".tr,
                          margin: getMargin(left: 20, top: 3, right: 20),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number,
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 20, top: 34),
                          child: Text("lbl_recent".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(78),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 20, top: 18),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20));
                                  },
                                  itemCount: controller.mobilePrepaidOneModelObj
                                      .value.profile1ItemList.value.length,
                                  itemBuilder: (context, index) {
                                    Profile1ItemModel model = controller
                                        .mobilePrepaidOneModelObj
                                        .value
                                        .profile1ItemList
                                        .value[index];
                                    return Profile1ItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 17, top: 32),
                          child: Text("lbl_all_contact".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 17, top: 23, right: 23),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(24));
                                  },
                                  itemCount: controller.mobilePrepaidOneModelObj
                                      .value.lista1ItemList.value.length,
                                  itemBuilder: (context, index) {
                                    Lista1ItemModel model = controller
                                        .mobilePrepaidOneModelObj
                                        .value
                                        .lista1ItemList
                                        .value[index];
                                    return Lista1ItemWidget(model,
                                        onTapRowoval: () {
                                      onTapRowoval();
                                    });
                                  }))))
                    ]))));
  }

  onTapRowoval() {
    Get.toNamed(AppRoutes.enterMoneyScreen);
  }

  onBackPressed() {
    Get.back();
  }
}
