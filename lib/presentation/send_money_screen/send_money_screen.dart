import '../send_money_screen/widgets/lista_item_widget.dart';
import '../send_money_screen/widgets/profile_item_widget.dart';
import 'controller/send_money_controller.dart';
import 'models/lista_item_model.dart';
import 'models/profile_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends GetWidget<SendMoneyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(90),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_money_transfer".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgPlus,
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6),
                      onTap: () {
                        onTapPlus1();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 7, top: 26, right: 7, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 20),
                          child: Text("lbl_favorite".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(73),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 20, top: 13),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20));
                                  },
                                  itemCount: controller.sendMoneyModelObj.value
                                      .profileItemList.value.length,
                                  itemBuilder: (context, index) {
                                    ProfileItemModel model = controller
                                        .sendMoneyModelObj
                                        .value
                                        .profileItemList
                                        .value[index];
                                    return ProfileItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 20, top: 42),
                          child: Text("lbl_all_contact".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold26)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 20, top: 23, right: 20),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(24));
                                  },
                                  itemCount: controller.sendMoneyModelObj.value
                                      .listaItemList.value.length,
                                  itemBuilder: (context, index) {
                                    ListaItemModel model = controller
                                        .sendMoneyModelObj
                                        .value
                                        .listaItemList
                                        .value[index];
                                    return ListaItemWidget(model,
                                        onTapRowoval: () {
                                      onTapRowoval();
                                    });
                                  }))))
                    ]))));
  }

  onTapRowoval() {
    Get.toNamed(AppRoutes.enterMoneyScreen);
  }

  onBackPressed() {
    Get.back();
  }

  onTapPlus1() {
    Get.toNamed(
      AppRoutes.addPersonScreen,
    );
  }
}
