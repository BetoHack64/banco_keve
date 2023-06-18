import '../card_details_screen/widgets/card_details_item_widget.dart';
import 'controller/card_details_controller.dart';
import 'models/card_details_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_image.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardDetailsScreen extends GetWidget<CardDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            84,
          ),
          leadingWidth: 68,
          leading: AppbarImage(
            height: getSize(
              44,
            ),
            width: getSize(
              44,
            ),
            svgPath: ImageConstant.imgGrid,
            margin: getMargin(
              left: 24,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_card_details".tr,
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 12,
                top: 40,
                right: 12,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      180,
                    ),
                    width: getHorizontalSize(
                      390,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 15,
                              right: 9,
                            ),
                            padding: getPadding(
                              left: 24,
                              top: 22,
                              right: 24,
                              bottom: 22,
                            ),
                            decoration:
                                AppDecoration.gradientBluegray900Gray90001,
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
                                  child: Text(
                                    "msg_1222_3443_9881".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtOverpassSemiBold18.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.54,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_balance".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassSemiBold8
                                                .copyWith(
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
                                              style: AppStyle
                                                  .txtOverpassSemiBold12
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
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
                          height: 30,
                          width: 30,
                          variant: IconButtonVariant.OutlineBlack9003f,
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgEye,
                          ),
                        ),
                        CustomIconButton(
                          height: 30,
                          width: 30,
                          variant: IconButtonVariant.OutlineBlack9003f,
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgEyeBlueGray90030x30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 73,
                      right: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassBold26,
                        ),
                        Spacer(),
                        Padding(
                          padding: getPadding(
                            top: 11,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl_25_jan".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOverpassSemiBold12Bluegray700,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation,
                          height: getVerticalSize(
                            6,
                          ),
                          width: getHorizontalSize(
                            7,
                          ),
                          margin: getMargin(
                            left: 5,
                            top: 18,
                            bottom: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 13,
                      right: 12,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              20,
                            ),
                          );
                        },
                        itemCount: controller.cardDetailsModelObj.value
                            .cardDetailsItemList.value.length,
                        itemBuilder: (context, index) {
                          CardDetailsItemModel model = controller
                              .cardDetailsModelObj
                              .value
                              .cardDetailsItemList
                              .value[index];
                          return CardDetailsItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
