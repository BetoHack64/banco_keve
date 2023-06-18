import '../activity_page/widgets/activity_item_widget.dart';
import 'controller/activity_controller.dart';
import 'models/activity_item_model.dart';
import 'models/activity_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_image.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ActivityPage extends StatelessWidget {
  ActivityController controller =
      Get.put(ActivityController(ActivityModel().obs));

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
            text: "lbl_activity".tr,
          ),
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 27,
                top: 40,
                right: 27,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      decoration: AppDecoration.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 40,
                              top: 24,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "lbl_income".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassBold22.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.32,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "lbl_expenses".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtOverpassSemiBold22.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.32,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 40,
                                top: 23,
                                right: 33,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 10,
                                      top: 6,
                                      bottom: 6,
                                    ),
                                    child: Text(
                                      "lbl_16_23_jan".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassRegular17,
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStockholmicons,
                                    height: getSize(
                                      24,
                                    ),
                                    width: getSize(
                                      24,
                                    ),
                                    margin: getMargin(
                                      top: 8,
                                      bottom: 8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              208,
                            ),
                            width: getHorizontalSize(
                              335,
                            ),
                            margin: getMargin(
                              top: 28,
                            ),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLine,
                                  height: getVerticalSize(
                                    208,
                                  ),
                                  width: getHorizontalSize(
                                    264,
                                  ),
                                  alignment: Alignment.centerRight,
                                  margin: getMargin(
                                    right: 17,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin: getMargin(
                                      top: 14,
                                    ),
                                    padding: getPadding(
                                      left: 104,
                                      top: 23,
                                      right: 104,
                                      bottom: 23,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup2812,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomButton(
                                          height: getVerticalSize(
                                            40,
                                          ),
                                          width: getHorizontalSize(
                                            91,
                                          ),
                                          text: "lbl_2_366".tr,
                                          margin: getMargin(
                                            top: 32,
                                          ),
                                          variant: ButtonVariant
                                              .OutlineBluegray60014,
                                          padding: ButtonPadding.PaddingT8,
                                          fontStyle: ButtonFontStyle
                                              .OverpassRegular14WhiteA700,
                                          prefixWidget: Container(
                                            padding: getPadding(
                                              all: 3,
                                            ),
                                            margin: getMargin(
                                              right: 4,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  6,
                                                ),
                                              ),
                                            ),
                                            child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdown10x10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 38,
                      ),
                      padding: getPadding(
                        left: 40,
                        top: 23,
                        right: 40,
                        bottom: 23,
                      ),
                      decoration: AppDecoration.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_transaction".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOverpassExtraBold26,
                              ),
                              Spacer(),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Text(
                                  "lbl_25_jan".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtOverpassSemiBold12Bluegray700,
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
                          Padding(
                            padding: getPadding(
                              top: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  height: 40,
                                  width: 40,
                                  margin: getMargin(
                                    top: 3,
                                    bottom: 6,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgBrightness,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                    top: 9,
                                    bottom: 12,
                                  ),
                                  child: Text(
                                    "lbl_limit".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassSemiBold17,
                                  ),
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_105_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtOverpassBold20.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.38,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "lbl_per_day".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassRegular16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgBars,
                            height: getVerticalSize(
                              122,
                            ),
                            width: getHorizontalSize(
                              262,
                            ),
                            margin: getMargin(
                              top: 26,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 14,
                              right: 1,
                              bottom: 3,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                  );
                                },
                                itemCount: controller.activityModelObj.value
                                    .activityItemList.value.length,
                                itemBuilder: (context, index) {
                                  ActivityItemModel model = controller
                                      .activityModelObj
                                      .value
                                      .activityItemList
                                      .value[index];
                                  return ActivityItemWidget(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
