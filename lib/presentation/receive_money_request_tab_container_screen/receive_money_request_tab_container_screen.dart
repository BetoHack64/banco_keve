import 'controller/receive_money_request_tab_container_controller.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/receive_money_personal_page/receive_money_personal_page.dart';
import 'package:banco_keve/presentation/receive_money_request_page/receive_money_request_page.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ReceiveMoneyRequestTabContainerScreen
    extends GetWidget<ReceiveMoneyRequestTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onBackPressed();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_money_request".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 40),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(360),
                                  margin: getMargin(left: 27, right: 27),
                                  padding: getPadding(
                                      left: 14, top: 10, right: 14, bottom: 10),
                                  decoration: AppDecoration.fillGray30001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(45),
                                            width: getHorizontalSize(309),
                                            child: TabBar(
                                                controller:
                                                    controller.tabsController,
                                                labelColor:
                                                    ColorConstant.whiteA700,
                                                labelStyle: TextStyle(
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Overpass',
                                                    fontWeight:
                                                        FontWeight.w800),
                                                unselectedLabelColor:
                                                    ColorConstant.gray700,
                                                unselectedLabelStyle: TextStyle(
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Overpass',
                                                    fontWeight:
                                                        FontWeight.w800),
                                                indicator: BoxDecoration(
                                                    color: ColorConstant
                                                        .blueGray900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                4))),
                                                tabs: [
                                                  Tab(
                                                      child: Text(
                                                          "lbl_personal".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis)),
                                                  Tab(
                                                      child: Text(
                                                          "lbl_business".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis))
                                                ]))
                                      ])),
                              Container(
                                  height: getVerticalSize(1038),
                                  child: TabBarView(
                                      controller: controller.tabsController,
                                      children: [
                                        ReceiveMoneyPersonalPage(),
                                        ReceiveMoneyRequestPage()
                                      ]))
                            ]))))));
  }

  onBackPressed() {
    Get.back();
  }
}
