import '../controller/card_details_controller.dart';
import '../models/card_details_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardDetailsItemWidget extends StatelessWidget {
  CardDetailsItemWidget(this.cardDetailsItemModelObj);

  CardDetailsItemModel cardDetailsItemModelObj;

  var controller = Get.find<CardDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 12,
        right: 16,
        bottom: 12,
      ),
      decoration: AppDecoration.white,
      child: Row(
        children: [
          CustomIconButton(
            height: 56,
            width: 56,
            variant: IconButtonVariant.FillGray10001,
            padding: IconButtonPadding.PaddingAll14,
            child: CustomImageView(
              svgPath: ImageConstant.imgCart,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 4,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    cardDetailsItemModelObj.shoppingTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOverpassBold18,
                  ),
                ),
                Obx(
                  () => Text(
                    cardDetailsItemModelObj.timeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOverpassRegular13,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 3,
              right: 46,
              bottom: 25,
            ),
            child: Obx(
              () => Text(
                cardDetailsItemModelObj.priceTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOverpassBold17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
