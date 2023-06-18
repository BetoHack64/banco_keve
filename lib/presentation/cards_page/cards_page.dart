import '../cards_page/widgets/cards_item_widget.dart';
import 'controller/cards_controller.dart';
import 'models/cards_item_model.dart';
import 'models/cards_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton.dart';
import 'package:banco_keve/widgets/app_bar/appbar_image.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CardsPage extends StatelessWidget {
  CardsController controller = Get.put(CardsController(CardsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(90),
                leadingWidth: 68,
                leading: AppbarImage(
                    height: getSize(44),
                    width: getSize(44),
                    svgPath: ImageConstant.imgGrid,
                    margin: getMargin(left: 24, top: 6, bottom: 6)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_your_cards".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgPlus,
                      margin: getMargin(left: 24, top: 6, right: 24, bottom: 6),
                      onTap: () {
                        onTapPlus();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 34, right: 24),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(36));
                              },
                              itemCount: controller.cardsModelObj.value
                                  .cardsItemList.value.length,
                              itemBuilder: (context, index) {
                                CardsItemModel model = controller.cardsModelObj
                                    .value.cardsItemList.value[index];
                                return CardsItemWidget(model,
                                    onTapColumntext: () {
                                  onTapColumntext();
                                });
                              }))),
                      Spacer()
                    ]))));
  }

  onTapColumntext() {
    Get.toNamed(AppRoutes.cardDetailsScreen);
  }

  onTapPlus() {
    Get.toNamed(
      AppRoutes.addCardOneScreen,
    );
  }
}
