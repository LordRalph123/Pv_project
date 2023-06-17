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

class FiveScreen extends StatelessWidget {
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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarSubtitle(
                          text: "Step 5",
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
                            hintText: "Days of autonomy",
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
                                      "6 hrs",
                                    ),
                                    value: 1),
                                PopupMenuItem(
                                    child: Text(
                                      "12 hrs",
                                    ),
                                    value: 2),
                                PopupMenuItem(
                                    child: Text(
                                      "24 hrs",
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
                            hintText: "Depth of discharge",
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
                                      "5%",
                                    ),
                                    value: 1),
                                PopupMenuItem(
                                    child: Text(
                                      "10%",
                                    ),
                                    value: 2),
                                PopupMenuItem(
                                    child: Text(
                                      "15%",
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
                            hintText: "Voltage of battery",
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
                                      "12V",
                                    ),
                                    value: 1),
                                PopupMenuItem(
                                    child: Text(
                                      "24%",
                                    ),
                                    value: 2),
                                PopupMenuItem(
                                    child: Text(
                                      "48%",
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
                            hintText: "Battery capacity",
                            hintStyle: TextStyle(
                                color: Color(0XFFAFAFAF), fontSize: 16),
                            suffixIcon: PopupMenuButton(
                              position: PopupMenuPosition.under,
                              padding: const EdgeInsets.only(top: 0, bottom: 0),
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: CustomButton(
                                      height: getVerticalSize(28),
                                      width: getHorizontalSize(59),
                                      text: "watts",
                                      variant: ButtonVariant.FillGray100,
                                      padding: ButtonPadding.PaddingAll6,
                                      fontStyle:
                                          ButtonFontStyle.TTHovesMedium12)),
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
                                      "",
                                    ),
                                    value: 1),
                                PopupMenuItem(
                                    child: Text(
                                      "",
                                    ),
                                    value: 2),
                                PopupMenuItem(
                                    child: Text(
                                      "",
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
                                    margin: getMargin(top: 3))
                              ]))
                    ]))));
  }

  onTapPrev(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fourScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sixScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
