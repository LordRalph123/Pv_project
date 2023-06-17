import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class FourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(78),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarSubtitle(
                          text: "Step 4",
                          margin: getMargin(left: 14, right: 14)),
                      AppbarTitle(text: "Location", margin: getMargin(top: 2))
                    ]),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgInfocircle,
                      margin:
                          getMargin(left: 24, top: 15, right: 24, bottom: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 58, right: 16, bottom: 58),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFF117900)),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "State",
                            hintStyle: TextStyle(
                                color: Color(0XFFAFAFAF), fontSize: 16),
                            suffixIcon: PopupMenuButton(
                              position: PopupMenuPosition.under,
                              padding: const EdgeInsets.only(top: 0, bottom: 0),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0XFF117900),
                                ),
                              ),
                              onSelected: ((value) {
                                switch (value) {
                                  case 1:
                                    break;
                                  case 2:
                                    break;
                                  case 3:
                                    break;
                                }
                              }),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Text(
                                      "Abia",
                                    ),
                                    value: 1),
                                PopupMenuItem(
                                    child: Text(
                                      "Adamawa",
                                    ),
                                    value: 2),
                                PopupMenuItem(
                                    child: Text(
                                      "Akwa Ibom",
                                    ),
                                    value: 3),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 300,
                        height: 44,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFF117900)),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Local government",
                            hintStyle: TextStyle(
                                color: Color(0XFFAFAFAF), fontSize: 16),
                            suffixIcon: PopupMenuButton(
                              position: PopupMenuPosition.under,
                              padding: const EdgeInsets.only(top: 0, bottom: 0),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Color(0XFF117900),
                                ),
                              ),
                              onSelected: ((value) {
                                switch (value) {
                                  case 1:
                                    break;
                                  case 2:
                                    break;
                                  case 3:
                                    break;
                                }
                              }),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                    child: Text(
                                      "Alimosho",
                                    ),
                                    value: 1),
                                PopupMenuItem(
                                    child: Text(
                                      "Amowo-Odofin",
                                    ),
                                    value: 2),
                                PopupMenuItem(
                                    child: Text(
                                      "Badagry",
                                    ),
                                    value: 3),
                              ],
                            ),
                          ),
                        ),
                      ),
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
                                CustomButton(
                                    height: getVerticalSize(44),
                                    width: getHorizontalSize(97),
                                    text: "Next",
                                    variant: ButtonVariant.FillGreen900,
                                    fontStyle: ButtonFontStyle
                                        .CoolveticaRgRegular20WhiteA700,
                                    suffixWidget: Container(
                                        margin: getMargin(left: 4),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright)),
                                    onTap: () {
                                      onTapNext(context);
                                    })
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
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: SizedBox(
                                        width: getHorizontalSize(56),
                                        child: Divider(
                                            height: getVerticalSize(3),
                                            thickness: getVerticalSize(3),
                                            color: ColorConstant.green900))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLine3,
                                    height: getVerticalSize(3),
                                    width: getHorizontalSize(40),
                                    margin: getMargin(top: 3))
                              ]))
                    ]))));
  }

  onTapPrev(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.threeScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fiveScreen);
  }

  onTapArrowleft3(BuildContext context) {
    Navigator.pop(context);
  }
}
