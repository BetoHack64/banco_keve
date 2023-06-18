import 'controller/onboarding_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 36, top: 110, right: 36),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVectorBlueGray900,
                          height: getSize(80),
                          width: getSize(80)),
                      Padding(
                          padding: getPadding(top: 73),
                          child: Text("msg_online_digital".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular30)),
                      Text("lbl_banking".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassRomanExtraBold64),
                      Container(
                          width: getHorizontalSize(294),
                          margin: getMargin(left: 23, top: 58, right: 23),
                          child: Text("msg_we_help_our_use".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOverpassRegular16)),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_start_now".tr.toUpperCase(),
                          margin: getMargin(top: 27, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.OverpassBold16WhiteA700,
                          onTap: () {
                            onTapStartnow();
                          })
                    ]))));
  }

  onTapStartnow() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
