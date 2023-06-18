import 'controller/log_in_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:banco_keve/data/models/login/post_login_req.dart';
import 'package:banco_keve/data/models/login/post_login_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:banco_keve/domain/googleauth/google_auth_helper.dart';

class LogInScreen extends GetWidget<LogInController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 40, right: 27, bottom: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVectorBlueGray900,
                          height: getSize(80),
                          width: getSize(80)),
                      Padding(
                          padding: getPadding(top: 55),
                          child: Text("lbl_hello".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold46)),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("msg_enter_your_deta".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 1, top: 36),
                              child: Text("lbl_phone_or_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtOverpassRegular16Gray700))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_email".tr,
                          margin: getMargin(top: 5),
                          variant: TextFormFieldVariant.OutlineGray400,
                          padding: TextFormFieldPadding.PaddingT23,
                          fontStyle:
                              TextFormFieldFontStyle.OverpassRegular18Gray700,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 25, top: 24, right: 10, bottom: 24),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(72))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 25),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtOverpassRegular16Gray700))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordOneController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 5),
                          variant: TextFormFieldVariant.OutlineGray400,
                          padding: TextFormFieldPadding.PaddingT23,
                          fontStyle:
                              TextFormFieldFontStyle.OverpassRegular18Gray700,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 25, top: 24, right: 10, bottom: 24),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(72)),
                          isObscureText: true),
                      CustomButton(
                          height: getVerticalSize(72),
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 40),
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle:
                              ButtonFontStyle.OverpassSemiBold18WhiteA700,
                          onTap: () {
                            onTapSignin();
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapGoogle();
                          },
                          child: Container(
                              margin: getMargin(top: 40),
                              padding: getPadding(
                                  left: 89, top: 19, right: 89, bottom: 19),
                              decoration: AppDecoration.outlineBluegray900,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGoogle,
                                        height: getSize(32),
                                        width: getSize(32),
                                        margin: getMargin(left: 2, bottom: 1)),
                                    Padding(
                                        padding: getPadding(top: 6, bottom: 6),
                                        child: Text("msg_sign_in_with_go".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtOverpassSemiBold16))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 34, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 2),
                                    child: Text("lbl_have_account".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassRegular20)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup();
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 8, top: 2),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRomanSemiBold20)))
                              ]))
                    ]))));
  }

  Future<void> onTapSignin() async {
    PostLoginReq postLoginReq = PostLoginReq(
      username: controller.emailController.text,
      password: controller.passwordOneController.text,
    );
    try {
      await controller.callCreateLogin(
        postLoginReq.toJson(),
      );
      _onOnTapLogInSuccess();
    } on PostLoginResp {
      _onOnTapLogInError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapLogInSuccess() {
    Get.offAllNamed(AppRoutes.homeContainerScreen,
        arguments: {NavigationArgs.id: controller.postLoginResp.data!.id!});
  }

  void _onOnTapLogInError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtSignup() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
