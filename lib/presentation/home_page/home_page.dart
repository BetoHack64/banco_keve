import '../home_page/widgets/options_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/options_item_model.dart';
import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/widgets/app_bar/appbar_image.dart';
import 'package:banco_keve/widgets/app_bar/appbar_title.dart';
import 'package:banco_keve/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                leadingWidth: 68,
                leading: AppbarImage(
                    height: getSize(44),
                    width: getSize(44),
                    svgPath: ImageConstant.imgGrid,
                    margin: getMargin(left: 24)),
                title: AppbarTitle(
                    text: "lbl_welcome_back".tr, margin: getMargin(left: 23))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 40, right: 27, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: getHorizontalSize(360),
                                      margin: getMargin(right: 3),
                                      padding: getPadding(
                                          left: 90,
                                          top: 17,
                                          right: 90,
                                          bottom: 17),
                                      decoration: AppDecoration.fillBluegray900,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_total_balance".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOverpassRegular16Gray10001),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("lbl_3_567_12".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOverpassExtraBold40))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 3, top: 50),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(201),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(24),
                                              crossAxisSpacing:
                                                  getHorizontalSize(24)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.homeModelObj.value
                                          .optionsItemList.value.length,
                                      itemBuilder: (context, index) {
                                        OptionsItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .optionsItemList
                                            .value[index];
                                        return OptionsItemWidget(model,
                                            onTapColumnplay: () {
                                          onTapColumnplay();
                                        });
                                      })))
                            ]))))));
  }

  onTapColumnplay() {
    Get.toNamed(
      AppRoutes.mobilePrepaidOneScreen,
    );
  }
}
