import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class SevenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(79),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarSubtitle(
                          text: "Step 6",
                          margin: getMargin(left: 50, right: 50)),
                      AppbarTitle(
                          text: "Battery Capacity", margin: getMargin(top: 5))
                    ]),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgInfocircle,
                      margin:
                          getMargin(left: 24, top: 14, right: 24, bottom: 17))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(264),
                          margin: getMargin(left: 7, top: 7, right: 55),
                          child: Text(
                              "The battery bank capacity required to power your load of",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtTTHovesRegular16)),
                      Container(
                          width: getHorizontalSize(240),
                          margin: getMargin(left: 7, top: 52, right: 78),
                          child: Text(
                              "The size of the PV array needed to power your load is",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtTTHovesRegular16)),
                      Padding(
                          padding: getPadding(left: 7, top: 53),
                          child: Text("And you need a charge controller of",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtTTHovesRegular16)),
                      Padding(
                          padding: getPadding(left: 7, top: 54),
                          child: Text("You will also require an inverter of",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtTTHovesRegular16)),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 8, right: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(44),
                                    width: getHorizontalSize(93),
                                    text: "Prev",
                                    padding: ButtonPadding.PaddingT10,
                                    fontStyle: ButtonFontStyle
                                        .CoolveticaRgRegular20Green900,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 4),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftGreen900)),
                                    onTap: () {
                                      onTapPrev(context);
                                    }),
                                Container(
                                    padding: getPadding(
                                        left: 10, top: 9, right: 10, bottom: 9),
                                    decoration: AppDecoration.fillGreen900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text("Done",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtCoolveticaRgRegular20WhiteA700),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowright,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(left: 4))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(top: 31),
                          padding: getPadding(top: 7, bottom: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3)),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: SizedBox(
                                        width: getHorizontalSize(56),
                                        child: Divider(
                                            height: getVerticalSize(3),
                                            thickness: getVerticalSize(3),
                                            color: ColorConstant.green900)))
                              ]))
                    ]))));
  }

  onTapPrev(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sixScreen);
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
