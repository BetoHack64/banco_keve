import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_image.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(93),
                leadingWidth: 68,
                leading: AppbarImage(
                    height: getSize(44),
                    width: getSize(44),
                    svgPath: ImageConstant.imgGrid,
                    margin: getMargin(left: 24, top: 6, bottom: 6)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 31, right: 23, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse107139x139,
                          height: getSize(139),
                          width: getSize(139),
                          radius: BorderRadius.circular(getHorizontalSize(69))),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Obx(() => Text(
                              controller
                                  .profileModelObj.value.suzanejobsTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassExtraBold40Gray900))),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Obx(() => Text(
                              controller.profileModelObj.value.emailTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular14))),
                      Padding(
                          padding: getPadding(left: 6, top: 32, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 5)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassSemiBold20)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray700,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 8, bottom: 3))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgFingerprint,
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(top: 7, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16, bottom: 1),
                                    child: Text("lbl_touch_id".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassSemiBold20)),
                                Spacer(),
                                Obx(() => CustomSwitch(
                                    margin: getMargin(top: 3),
                                    value: controller.isSelectedSwitch.value,
                                    onChanged: (value) {
                                      controller.isSelectedSwitch.value = value;
                                    }))
                              ])),
                      Padding(
                          padding: getPadding(left: 6, top: 33, right: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCut,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 2, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_languages".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassSemiBold20)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray700,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 5, bottom: 6))
                              ])),
                      Padding(
                          padding: getPadding(left: 4, top: 29, right: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgInfo,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 3, bottom: 2)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_app_information".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassSemiBold20)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray700,
                                    height: getVerticalSize(14),
                                    width: getHorizontalSize(8),
                                    margin: getMargin(top: 6, bottom: 5))
                              ])),
                      Padding(
                          padding:
                              getPadding(left: 4, top: 30, right: 4, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getVerticalSize(19),
                                    width: getHorizontalSize(20),
                                    margin: getMargin(top: 3, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_support".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassSemiBold20)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("lbl_5156446981".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassRegular12Bluegray700))
                              ]))
                    ]))));
  }
}
