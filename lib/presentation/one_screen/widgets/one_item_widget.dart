import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class OneItemWidget extends StatelessWidget {
  OneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 6,
              bottom: 7,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtTTHovesMedium10,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 27,
              top: 6,
              bottom: 7,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtTTHovesMedium10,
            ),
          ),
          Container(
            width: getHorizontalSize(
              31,
            ),
            margin: getMargin(
              left: 27,
            ),
            child: Text(
              "",
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtTTHovesMedium10,
            ),
          ),
          Container(
            width: getHorizontalSize(
              26,
            ),
            margin: getMargin(
              left: 28,
              bottom: 1,
            ),
            child: Text(
              "",
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtTTHovesMedium10,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 22,
              top: 6,
              bottom: 7,
            ),
            child: Text(
              "",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtTTHovesMedium10,
            ),
          ),
        ],
      ),
    );
  }
}
