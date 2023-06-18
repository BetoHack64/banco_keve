import '../controller/electric_bill_controller.dart';
import '../models/electric_bill_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElectricBillItemWidget extends StatelessWidget {
  ElectricBillItemWidget(this.electricBillItemModelObj);

  ElectricBillItemModel electricBillItemModelObj;

  var controller = Get.find<ElectricBillController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 20,
          ),
          padding: getPadding(
            left: 20,
            top: 18,
            right: 20,
            bottom: 18,
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
                  style: AppStyle.txtOverpassBold10.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 32,
                ),
                child: Obx(
                  () => Text(
                    electricBillItemModelObj.textOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOverpassSemiBold15.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.45,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                  bottom: 1,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_balance".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassSemiBold667.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "lbl_31_250".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOverpassSemiBold10.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgVolume20x20,
                      height: getSize(
                        16,
                      ),
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        left: 206,
                        top: 8,
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
