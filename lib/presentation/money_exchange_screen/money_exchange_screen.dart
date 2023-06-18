import '../money_exchange_screen/widgets/money_exchange_item_widget.dart';
import 'controller/money_exchange_controller.dart';
import 'models/money_exchange_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:banco_keve/widgets/custom_button.dart';
import 'package:banco_keve/widgets/custom_icon_button.dart';
import 'package:banco_keve/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MoneyExchangeScreen extends GetWidget<MoneyExchangeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                leadingWidth: 68,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgLocation44x44,
                    margin: getMargin(left: 24, top: 6, bottom: 6),
                    onTap: () {
                      openDatePickerDialog();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_money_exchange2".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 27, top: 29, right: 27, bottom: 29),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(95),
                          width: getHorizontalSize(360),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_from".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOverpassRegular16Gray900),
                                          CustomTextFormField(
                                              width: getHorizontalSize(168),
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.priceController,
                                              hintText: "lbl_usd".tr,
                                              margin: getMargin(top: 5))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_to".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOverpassRegular16Gray900),
                                          CustomTextFormField(
                                              width: getHorizontalSize(168),
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.priceOneController,
                                              hintText: "lbl_bdt".tr,
                                              margin: getMargin(top: 5),
                                              textInputAction:
                                                  TextInputAction.done)
                                        ])),
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin: getMargin(bottom: 12),
                                    variant: IconButtonVariant.FillTeal300,
                                    shape: IconButtonShape.CircleBorder20,
                                    alignment: Alignment.bottomCenter,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgContrastWhiteA700))
                              ])),
                      Padding(
                          padding: getPadding(top: 37),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_exchange_rate".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassBold26),
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse11030x30,
                                    height: getSize(30),
                                    width: getSize(30),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(15)),
                                    margin: getMargin(top: 2, bottom: 7)),
                                Padding(
                                    padding:
                                        getPadding(left: 9, top: 3, bottom: 9),
                                    child: Text("lbl_usa".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassSemiBold17)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft2Gray900,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(12),
                                    margin:
                                        getMargin(left: 7, top: 12, bottom: 17))
                              ])),
                      Padding(
                          padding: getPadding(top: 17, right: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_country".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassSemiBold18Gray400)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_usd".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassSemiBold18Gray400)),
                                Padding(
                                    padding: getPadding(left: 43, bottom: 1),
                                    child: Text("lbl_cr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOverpassSemiBold18Gray400))
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        getPadding(top: 16.0, bottom: 16.0),
                                    child: SizedBox(
                                        width: getHorizontalSize(360),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color:
                                                ColorConstant.blueGray10002)));
                              },
                              itemCount: controller.moneyExchangeModelObj.value
                                  .moneyExchangeItemList.value.length,
                              itemBuilder: (context, index) {
                                MoneyExchangeItemModel model = controller
                                    .moneyExchangeModelObj
                                    .value
                                    .moneyExchangeItemList
                                    .value[index];
                                return MoneyExchangeItemWidget(model);
                              })))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(58),
                text: "lbl_exchange".tr.toUpperCase(),
                margin: getMargin(left: 27, right: 27, bottom: 30),
                variant: ButtonVariant.FillGray7007e,
                padding: ButtonPadding.PaddingAll16)));
  }

  Future<void> openDatePickerDialog() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.selectedopenDatePickerDialogDate,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.selectedopenDatePickerDialogDate = dateTime;
    }
  }
}
