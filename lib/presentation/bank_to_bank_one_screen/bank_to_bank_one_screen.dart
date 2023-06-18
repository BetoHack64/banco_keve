import '../bank_to_bank_one_screen/widgets/listtext_item_widget.dart';
import 'controller/bank_to_bank_one_controller.dart';
import 'models/listtext_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BankToBankOneScreen extends GetWidget<BankToBankOneController> {
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
                title: AppbarTitle(text: "lbl_bank_to_bank2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 21, top: 26, right: 21, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 6),
                          child: Text("msg_select_bank_to".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Padding(
                          padding: getPadding(left: 6, top: 2),
                          child: Text("msg_select_a_accoun".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassRegular14)),
                      Padding(
                          padding: getPadding(left: 6, top: 12),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(24));
                              },
                              itemCount: controller.bankToBankOneModelObj.value
                                  .listtextItemList.value.length,
                              itemBuilder: (context, index) {
                                ListtextItemModel model = controller
                                    .bankToBankOneModelObj
                                    .value
                                    .listtextItemList
                                    .value[index];
                                return ListtextItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(58),
                text: "lbl_continue2".tr.toUpperCase(),
                margin: getMargin(left: 47, right: 47, bottom: 56))));
  }

  onBackPressed() {
    Get.back();
  }
}
