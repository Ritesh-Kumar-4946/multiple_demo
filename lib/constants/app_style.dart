import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_colors.dart';
import 'package:punon_demo/constants/app_dimensions.dart';

class AppStyle {
  AppStyle._();

  static const List<BoxShadow> kBtnShadow = [
    BoxShadow(
      color: kBtnShadowColor,
      offset: Offset(0, 8),
      blurRadius: 20,
    )
  ];
}

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: AppDimensions.kTitleTextSize,
  color: AppColor.kTextColor,
  fontWeight: AppDimensions.kMediumFontWeight,
);

const TextStyle kBodyTextStyle = TextStyle(
  fontSize: AppDimensions.kBodyTextSize,
  color: AppColor.kTextColor,
  fontWeight: kLightFontWeight,
);

const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontSize: AppDimensions.kBtnTextSize,
  fontWeight: AppDimensions.kMediumFontWeight,
);

InputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputBorderRadius),
  borderSide: BorderSide(
    width: 1,
    color: kInputBorderColor,
  ),
);
