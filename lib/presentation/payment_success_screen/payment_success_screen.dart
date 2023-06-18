import 'controller/payment_success_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessScreen extends GetWidget<PaymentSuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 1,
                ),
                color: ColorConstant.whiteA700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder42,
                ),
                child: Container(
                  height: getSize(
                    80,
                  ),
                  width: getSize(
                    80,
                  ),
                  padding: getPadding(
                    left: 29,
                    top: 31,
                    right: 29,
                    bottom: 31,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder42,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmark16x22,
                        height: getVerticalSize(
                          16,
                        ),
                        width: getHorizontalSize(
                          22,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  198,
                ),
                margin: getMargin(
                  top: 18,
                ),
                child: Text(
                  "msg_payment_sent_su".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtOverpassExtraBold30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
