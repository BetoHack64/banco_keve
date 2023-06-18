import '../controller/home_controller.dart';
import '../models/options_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(this.optionsItemModelObj, {this.onTapColumnplay});

  OptionsItemModel optionsItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapColumnplay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnplay?.call();
      },
      child: Container(
        padding: getPadding(
          left: 20,
          top: 26,
          right: 20,
          bottom: 26,
        ),
        decoration: AppDecoration.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 35,
              width: 35,
              variant: IconButtonVariant.FillRed50,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlay,
              ),
            ),
            Container(
              width: getHorizontalSize(
                62,
              ),
              margin: getMargin(
                top: 19,
              ),
              child: Obx(
                () => Text(
                  optionsItemModelObj.sendmoneyTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOverpassBold20,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
                bottom: 3,
              ),
              child: Obx(
                () => Text(
                  optionsItemModelObj.card3303Txt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOverpassRegular15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
