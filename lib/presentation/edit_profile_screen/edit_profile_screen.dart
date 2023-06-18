import 'controller/edit_profile_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
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
                title: AppbarTitle(text: "lbl_edit_profile".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 34, right: 27, bottom: 34),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapProfile();
                              },
                              child: Container(
                                  height: getSize(139),
                                  width: getSize(139),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse107139x139,
                                            height: getSize(139),
                                            width: getSize(139),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(69)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 30,
                                            width: 30,
                                            margin: getMargin(right: 7),
                                            variant:
                                                IconButtonVariant.OutlineGray50,
                                            padding:
                                                IconButtonPadding.PaddingAll7,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgTrash))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 12),
                              child: Text("lbl_suzane_jobs".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtOverpassExtraBold40Gray900))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 15),
                              child: Text("lbl_edit_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular14))),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.nameOneController,
                          hintText: "lbl_suzane_jobs".tr,
                          margin: getMargin(top: 5),
                          fontStyle:
                              TextFormFieldFontStyle.OverpassSemiBold17Gray900),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailOneController,
                          hintText: "lbl_user_gmail_com".tr,
                          margin: getMargin(top: 5),
                          fontStyle:
                              TextFormFieldFontStyle.OverpassSemiBold17Gray900,
                          textInputType: TextInputType.emailAddress),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_phone".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.phoneOneController,
                          hintText: "lbl_1234567890".tr,
                          margin: getMargin(top: 5),
                          fontStyle:
                              TextFormFieldFontStyle.OverpassSemiBold17Gray900,
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_save".tr.toUpperCase(),
                          margin: getMargin(top: 50, bottom: 5),
                          onTap: () {
                            onTapSave();
                          })
                    ]))));
  }

  onTapProfile() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapSave() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
