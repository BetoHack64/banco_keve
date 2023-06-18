import '../controller/pay_bill_controller.dart';
import '../models/pay_bill_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PayBillItemWidget extends StatelessWidget {
  PayBillItemWidget(this.payBillItemModelObj, {this.onTapColumnlightbulb});

  PayBillItemModel payBillItemModelObj;

  var controller = Get.find<PayBillController>();

  VoidCallback? onTapColumnlightbulb;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnlightbulb?.call();
      },
      child: Container(
        padding: getPadding(
          left: 16,
          top: 15,
          right: 16,
          bottom: 15,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomIconButton(
              height: 35,
              width: 35,
              margin: getMargin(
                left: 4,
                top: 10,
              ),
              variant: IconButtonVariant.FillYellowA400,
              shape: IconButtonShape.RoundedBorder12,
              padding: IconButtonPadding.PaddingAll7,
              child: CustomImageView(
                svgPath: ImageConstant.imgLightbulb18x17,
              ),
            ),
            Container(
              width: getHorizontalSize(
                97,
              ),
              margin: getMargin(
                top: 18,
              ),
              child: Obx(
                () => Text(
                  payBillItemModelObj.electricitybillOneTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOverpassBold20,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                93,
              ),
              margin: getMargin(
                top: 14,
              ),
              child: Text(
                "msg_pay_bill_of_thi".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtOverpassRegular15Bluegray700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
