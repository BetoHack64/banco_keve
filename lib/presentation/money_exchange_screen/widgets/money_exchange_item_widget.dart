import '../controller/money_exchange_controller.dart';
import '../models/money_exchange_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoneyExchangeItemWidget extends StatelessWidget {
  MoneyExchangeItemWidget(this.moneyExchangeItemModelObj);

  MoneyExchangeItemModel moneyExchangeItemModelObj;

  var controller = Get.find<MoneyExchangeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(
            top: 3,
            bottom: 3,
          ),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder2,
          ),
          child: Container(
            height: getVerticalSize(
              18,
            ),
            width: getHorizontalSize(
              24,
            ),
            decoration: AppDecoration.white.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgClose,
                  height: getVerticalSize(
                    18,
                  ),
                  width: getHorizontalSize(
                    24,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            top: 1,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              moneyExchangeItemModelObj.languageTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOverpassSemiBold14,
            ),
          ),
        ),
        Spacer(
          flex: 75,
        ),
        Text(
          "lbl_1".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtOverpassRegular16Gray900,
        ),
        Spacer(
          flex: 24,
        ),
        Text(
          "lbl_1_746".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtOverpassSemiBold16GreenA70001,
        ),
      ],
    );
  }
}
