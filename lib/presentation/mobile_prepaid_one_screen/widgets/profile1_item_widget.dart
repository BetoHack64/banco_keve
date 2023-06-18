import '../controller/mobile_prepaid_one_controller.dart';
import '../models/profile1_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Profile1ItemWidget extends StatelessWidget {
  Profile1ItemWidget(this.profile1ItemModelObj);

  Profile1ItemModel profile1ItemModelObj;

  var controller = Get.find<MobilePrepaidOneController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: ImageConstant.imgEllipse1160x60,
          height: getSize(
            60,
          ),
          width: getSize(
            60,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              30,
            ),
          ),
          margin: getMargin(
            right: 20,
          ),
        ),
      ),
    );
  }
}
