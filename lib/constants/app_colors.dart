import 'package:flutter/widgets.dart';

class AppColor {
  AppColor._();

  static const Color kBgColor = Color(0xFFFEDCE0);
  static const Color kTextColor = Color(0xFF3D0007);
}

const Color kBtnColorStart = Color(0xFFFA6B74);
const Color kBtnColorEnd = Color(0xFFF89500);
const Color kBtnShadowColor = Color(0x33D83131);
const Color kInputBorderColor = Color(0xFFECECEC);

const LinearGradient kBtnLinearGradient = LinearGradient(
  colors: [
    kBtnColorStart,
    kBtnColorEnd,
  ],
);
