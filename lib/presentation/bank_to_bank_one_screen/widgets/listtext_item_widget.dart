import '../controller/bank_to_bank_one_controller.dart';
import '../models/listtext_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtextItemWidget extends StatelessWidget {
  ListtextItemWidget(this.listtextItemModelObj);

  ListtextItemModel listtextItemModelObj;

  var controller = Get.find<BankToBankOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        200,
      ),
      width: getHorizontalSize(
        366,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: getPadding(
                left: 24,
                top: 22,
                right: 24,
                bottom: 22,
              ),
              decoration: AppDecoration.gradientBluegray900Gray90001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 2,
                    ),
                    child: Text(
                      "msg_jonathan_anders".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOverpassBold12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.36,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 2,
                      top: 39,
                    ),
                    child: Obx(
                      () => Text(
                        listtextItemModelObj.textOneTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOverpassSemiBold18.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.54,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                      bottom: 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_balance".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassSemiBold8.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.24,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Text(
                                "lbl_31_250".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOverpassSemiBold12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.36,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgVolume20x20,
                          height: getSize(
                            20,
                          ),
                          width: getSize(
                            20,
                          ),
                          margin: getMargin(
                            top: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 40,
            width: 40,
            variant: IconButtonVariant.FillWhiteA700,
            shape: IconButtonShape.CircleBorder20,
            padding: IconButtonPadding.PaddingAll14,
            alignment: Alignment.bottomCenter,
            child: CustomImageView(
              svgPath: ImageConstant.imgCheckmark40x40,
            ),
          ),
        ],
      ),
    );
  }
}
