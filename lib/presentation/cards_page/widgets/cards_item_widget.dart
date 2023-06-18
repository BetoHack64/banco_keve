import '../controller/cards_controller.dart';
import '../models/cards_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardsItemWidget extends StatelessWidget {
  CardsItemWidget(this.cardsItemModelObj, {this.onTapColumntext});

  CardsItemModel cardsItemModelObj;

  var controller = Get.find<CardsController>();

  VoidCallback? onTapColumntext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapColumntext?.call();
        },
        child: Container(
          padding: getPadding(
            left: 24,
            top: 22,
            right: 24,
            bottom: 22,
          ),
          decoration: AppDecoration.gradientBluegray900Gray90001,
          child: Column(
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
                    cardsItemModelObj.textOneTxt.value,
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
    );
  }
}
