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

class OneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        height: getVerticalSize(79),
        leadingWidth: 48,
        leading: AppbarImage(
          height: getSize(24),
          width: getSize(24),
          svgPath: ImageConstant.imgArrowleft,
          margin: getMargin(left: 24, top: 13, bottom: 18),
          onTap: () {
            onTapArrowleft(context);
          },
        ),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppbarSubtitle(
              text: "Step 1",
              margin: getMargin(left: 36, right: 36),
            ),
            AppbarTitle(
              text: "Load Analysis",
              margin: getMargin(top: 5),
            )
          ],
        ),
        actions: [
          AppbarImage(
            height: getSize(24),
            width: getSize(24),
            svgPath: ImageConstant.imgInfocircle,
            margin: getMargin(left: 24, top: 13, right: 24, bottom: 18),
          )
        ],
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // height: 150,
            width: 312,
            decoration: BoxDecoration(
                border: Border.all(
              color: Color(0XFF8D8D8D),
            )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Center(
                            child: Text(
                      "Device",
                      style: TextStyle(color: Color(0XFF666666), fontSize: 10),
                    ))),
                    Container(
                        child: Center(
                            child: Text(
                      "Power",
                      style: TextStyle(color: Color(0XFF666666), fontSize: 10),
                    ))),
                    Container(
                        child: Center(
                            child: Text(
                      "Hours/\n day",
                      style: TextStyle(color: Color(0XFF666666), fontSize: 10),
                    ))),
                    Container(
                        child: Center(
                            child: Text(
                      "Days/\n week",
                      style: TextStyle(color: Color(0XFF666666), fontSize: 10),
                    ))),
                    Container(
                        child: Center(
                            child: Text(
                      "Total watts",
                      style: TextStyle(color: Color(0XFF666666), fontSize: 10),
                    ))),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Bulb",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "60 W",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "12 hours",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "4 days",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Inverter",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Bulb",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "60 W",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "12 hours",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "4 days",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Inverter",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Bulb",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "60 W",
                          hintStyle:
                              TextStyle(color: Color(0XFF666666), fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "12 hours",
                          hintStyle:
                              TextStyle(color: Color(0XFF666666), fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "4 days",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Inverter",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Bulb",
                          hintStyle:
                              TextStyle(color: Color(0XFF666666), fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "60 W",
                          hintStyle:
                              TextStyle(color: Color(0XFF666666), fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "12 hours",
                          hintStyle:
                              TextStyle(color: Color(0XFF666666), fontSize: 10),
                        ),
                      ),
                    )),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "4 days",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Inverter",
                            hintStyle: TextStyle(
                                color: Color(0XFF666666), fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomButton(
              onTap: () {},
              height: getVerticalSize(44),
              text: "Add Load",
              margin: getMargin(left: 7, top: 35, right: 7),
              padding: ButtonPadding.PaddingT10,
              fontStyle: ButtonFontStyle.CoolveticaRgRegular20,
              prefixWidget: Container(
                  margin: getMargin(right: 10),
                  child:
                      CustomImageView(svgPath: ImageConstant.imgSquareplus))),
          Padding(
            padding: getPadding(left: 8, top: 292, right: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    height: getVerticalSize(44),
                    width: getHorizontalSize(98),
                    text: "Back",
                    padding: ButtonPadding.PaddingT10,
                    fontStyle: ButtonFontStyle.CoolveticaRgRegular20Green900,
                    prefixWidget: Container(
                        margin: getMargin(right: 4),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowleftGreen900)),
                    onTap: () {
                      onTapBack(context);
                    }),
                CustomButton(
                  height: getVerticalSize(44),
                  width: getHorizontalSize(97),
                  text: "Next",
                  variant: ButtonVariant.FillGreen900,
                  fontStyle: ButtonFontStyle.CoolveticaRgRegular20WhiteA700,
                  suffixWidget: Container(
                      margin: getMargin(left: 4),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgArrowright)),
                  onTap: () {
                    onTapNext(context);
                  },
                )
              ],
            ),
          ),
          Container(
            margin: getMargin(top: 31, bottom: 5),
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
              ],
            ),
          )
        ],
      ),
    );
  }

  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.zeroScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.twoScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
