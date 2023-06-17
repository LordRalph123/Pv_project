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

class TwoScreen extends StatelessWidget {
  final List<String> dropdownOptions = ['12V', '24V', '48V', '96V', '120V'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      home: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
   appBar: CustomAppBar(
                height: getVerticalSize(79),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 13, bottom: 18),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarSubtitle(
                          text: "Step 2",
                          margin: getMargin(left: 35, right: 35)),
                      AppbarTitle(
                          text: "Load Analysis", margin: getMargin(top: 5))
                    ]),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgInfocircle,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 18))
                ]),
        body: MyForm(dropdownOptions: dropdownOptions),
      ),
    );
    }
}
    class MyForm extends StatefulWidget {
  final List<String> dropdownOptions;

  MyForm({required this.dropdownOptions});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String selectedOption = '';
  Map<String, bool> optionValues = {};

  @override
  void initState() {
    super.initState();
    for (String option in widget.dropdownOptions) {
      optionValues[option] = false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                        child: DropdownButtonFormField<String>(
          value: selectedOption,
          items: widget.dropdownOptions.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Row(
                children: [
                  Radio(
                    value: option,
                    groupValue: selectedOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue!;
                        optionValues[selectedOption] = true;
                      });
                    },
                  ),
                  Text(option),
                ],
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedOption = newValue!;
            });
          },
          decoration: InputDecoration(
            labelText: 'Dropdown',
          ),
        ),
        SizedBox(height: 16.0),
        Text('Selected Option: $selectedOption'),
        SizedBox(height: 16.0),

        Column(
          children: optionValues.entries.map((entry) {
            return Row(
              children: [
                Radio(
                  value: entry.key,
                  groupValue: selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue!;
                      optionValues[selectedOption] = true;
                    });
                  },
                ),
                Text(entry.key),
              ],
            );
          }).toList(),
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
                            hintText: "Safety factors",
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
                                  case 4:
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
                                    value: 4),
                                PopupMenuItem(
                                    child: Text(
                                      "20%",
                                    ),
                                    value: 3),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
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
                                fontStyle: ButtonFontStyle
                                    .CoolveticaRgRegular20Green900,
                                prefixWidget: Container(
                                    margin: getMargin(right: 4),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftGreen900)),
                                onTap: () {
                                  onTapBack(context);
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
                                      svgPath: ImageConstant.imgArrowright)),
                              onTap: () {
                                onTapNext(context);
                              },
                            )
                          ],
                        ),
                      ),
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

  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.zeroScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.threeScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> dropdownOptions = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown with Radio Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown with Radio Buttons'),
        ),
        body: MyForm(dropdownOptions: dropdownOptions),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  final List<String> dropdownOptions;

  MyForm({required this.dropdownOptions});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String selectedOption = '';
  Map<String, bool> optionValues = {};

  @override
  void initState() {
    super.initState();
    for (String option in widget.dropdownOptions) {
      optionValues[option] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          value: selectedOption,
          items: widget.dropdownOptions.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Row(
                children: [
                  Radio(
                    value: option,
                    groupValue: selectedOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue!;
                        optionValues[selectedOption] = true;
                      });
                    },
                  ),
                  Text(option),
                ],
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedOption = newValue!;
            });
          },
          decoration: InputDecoration(
            labelText: 'Dropdown',
          ),
        ),
        SizedBox(height: 16.0),
        Text('Selected Option: $selectedOption'),
        SizedBox(height: 16.0),
        Text('Radio Button Selections:'),
        Column(
          children: optionValues.entries.map((entry) {
            return Row(
              children: [
                Radio(
                  value: entry.key,
                  groupValue: selectedOption,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedOption = newValue!;
                      optionValues[selectedOption] = true;
                    });
                  },
                ),
                Text(entry.key),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
