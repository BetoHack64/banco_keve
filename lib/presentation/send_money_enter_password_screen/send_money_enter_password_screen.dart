import 'controller/send_money_enter_password_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:banco_keve/presentation/total_bottomsheet/total_bottomsheet.dart';
import 'package:banco_keve/presentation/total_bottomsheet/controller/total_controller.dart';

class SendMoneyEnterPasswordScreen
    extends GetWidget<SendMoneyEnterPasswordController> {
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
                title: AppbarTitle(text: "lbl_money_transfer".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 108, right: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(221),
                          child: Text("msg_enter_your_acco".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOverpassBold26)),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("msg_enter_your_acco2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular14Gray900)),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(26),
                                  fontFamily: 'Overpass',
                                  fontWeight: FontWeight.w400),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(65),
                                  fieldWidth: getHorizontalSize(65),
                                  shape: PinCodeFieldShape.box,
                                  selectedFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveColor: ColorConstant.blueGray10001,
                                  selectedColor: ColorConstant.blueGray10001,
                                  activeColor: ColorConstant.blueGray10001)))),
                      CustomButton(
                          height: getVerticalSize(58),
                          text: "lbl_make_payment".tr.toUpperCase(),
                          margin: getMargin(top: 24, bottom: 5),
                          padding: ButtonPadding.PaddingAll16,
                          onTap: () {
                            onTapMakepayment();
                          })
                    ]))));
  }

  onTapMakepayment() {
    Get.bottomSheet(
      TotalBottomsheet(
        Get.put(
          TotalController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
