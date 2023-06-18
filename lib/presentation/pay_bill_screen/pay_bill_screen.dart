import '../pay_bill_screen/widgets/pay_bill_item_widget.dart';
import 'controller/pay_bill_controller.dart';
import 'models/pay_bill_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PayBillScreen extends GetWidget<PayBillController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_pay_bill".tr)),
            body: Padding(
                padding: getPadding(left: 27, top: 34, right: 27),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(201),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(24),
                        crossAxisSpacing: getHorizontalSize(24)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .payBillModelObj.value.payBillItemList.value.length,
                    itemBuilder: (context, index) {
                      PayBillItemModel model = controller
                          .payBillModelObj.value.payBillItemList.value[index];
                      return PayBillItemWidget(model, onTapColumnlightbulb: () {
                        onTapColumnlightbulb();
                      });
                    })))));
  }

  onTapColumnlightbulb() {
    Get.toNamed(AppRoutes.electricBillScreen);
  }

  onBackPressed() {
    Get.back();
  }
}
