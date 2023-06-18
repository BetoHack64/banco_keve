import 'controller/sign_up_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:banco_keve/data/models/register/post_register_req.dart';
import 'package:banco_keve/data/models/register/post_register_resp.dart';
import 'package:banco_keve/core/constants/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:banco_keve/domain/googleauth/google_auth_helper.dart';

class SignUpScreen extends GetWidget<SignUpController> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgVectorBlueGray900,
                          height: getSize(80),
                          width: getSize(80),
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(left: 1, top: 61),
                          child: Text("lbl_phone_or_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16Gray700)),
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
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_set_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16Gray700)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.setpasswordOneController,
                          hintText: "lbl_set_password".tr,
                          margin: getMargin(top: 9),
                          variant: TextFormFieldVariant.OutlineGray400,
                          padding: TextFormFieldPadding.PaddingT23,
                          fontStyle:
                              TextFormFieldFontStyle.OverpassRegular18Gray700,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 25, top: 24, right: 10, bottom: 24),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(72)),
                          isObscureText: true),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("msg_confirm_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular16Gray700)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.confirmpasswordTwoController,
                          hintText: "msg_confirm_password".tr,
                          margin: getMargin(top: 9),
                          variant: TextFormFieldVariant.OutlineGray400,
                          padding: TextFormFieldPadding.PaddingT23,
                          fontStyle:
                              TextFormFieldFontStyle.OverpassRegular18Gray700,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 28, top: 24, right: 10, bottom: 24),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(72))),
                      CustomButton(
                          height: getVerticalSize(72),
                          text: "lbl_sign_up2".tr,
                          margin: getMargin(top: 41),
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle:
                              ButtonFontStyle.OverpassSemiBold18WhiteA700,
                          onTap: () {
                            onTapSignup();
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapGoogle();
                          },
                          child: Container(
                              margin: getMargin(top: 40),
                              padding: getPadding(
                                  left: 86, top: 19, right: 86, bottom: 19),
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
                                        margin: getMargin(left: 5, bottom: 1)),
                                    Padding(
                                        padding: getPadding(top: 6, bottom: 6),
                                        child: Text(
                                            "msg_sign_up_with_google".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtOverpassSemiBold16))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 34, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_have_account".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtOverpassRegular20)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignin();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 2),
                                            child: Text("lbl_sign_in2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOverpassRomanSemiBold20)))
                                  ])))
                    ]))));
  }

  Future<void> onTapSignup() async {
    PostRegisterReq postRegisterReq = PostRegisterReq(
      username: controller.emailController.text,
      password: controller.setpasswordOneController.text,
      email: controller.emailController.text,
      name: controller.emailController.text,
      role: User.role,
    );
    try {
      await controller.callCreateRegister(
        postRegisterReq.toJson(),
      );
      _onOnTapSIgnUpSuccess();
    } on PostRegisterResp {
      _onOnTapSIgnUpError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapSIgnUpSuccess() {
    Get.offAllNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  void _onOnTapSIgnUpError() {
    Fluttertoast.showToast(
      msg: controller.postRegisterResp.message!.toString(),
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

  onTapTxtSignin() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
