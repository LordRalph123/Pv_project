import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class ZeroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 12, right: 12, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("Welcome",
                              textAlign: TextAlign.center,
                              style: AppStyle.txtCoolveticaRgRegular408)),
                      Container(
                        height: getSize(336),
                        width: getSize(336),
                        margin: getMargin(top: 7),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgStart,
                          height: getSize(336),
                          width: getSize(336),
                          alignment: Alignment.center,
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(44),
                          text: "Quick Calculation",
                          margin: getMargin(left: 13, right: 11),
                          padding: ButtonPadding.PaddingAll10,
                          fontStyle: ButtonFontStyle.CoolveticaRgRegular20,
                          onTap: () {
                            onTapQuick(context);
                          })
                    ]))));
  }

  onTapQuick(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.oneScreen);
  }
}
