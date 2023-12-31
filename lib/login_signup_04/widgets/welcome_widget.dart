import 'package:flutter/material.dart';
import 'package:punon_demo/constants/app_assets.dart';
import 'package:punon_demo/constants/app_colors.dart';
import 'package:punon_demo/constants/app_dimensions.dart';
import 'package:punon_demo/constants/app_style.dart';

/// 登录方式图标
class LoginTypeIconWidget extends StatelessWidget {
  const LoginTypeIconWidget({Key? key, required this.icon})
      : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(
        icon,
        width: 16,
        height: 16,
      ),
    );
  }
}

/// 横线
class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Divider(color: AppColor.kTextColor),
    );
  }
}

/// 登录按钮
class LoginBtnWidget extends StatelessWidget {
  const LoginBtnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppStyle.kBtnShadow,
        borderRadius: BorderRadius.circular(AppDimensions.kBtnRadius),
      ),
      alignment: Alignment.center,
      child: Text(
        'Login',
        style: kBtnTextStyle,
      ),
    );
  }
}

/// 渐变按钮组件
class GradientBtnWidget extends StatelessWidget {
  const GradientBtnWidget(
      {Key? key, required this.width, required this.child, required this.onTap})
      : super(key: key);
  final double width;
  final Widget child;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
          gradient: kBtnLinearGradient,
          boxShadow: AppStyle.kBtnShadow,
          borderRadius: BorderRadius.circular(AppDimensions.kBtnRadius),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}

/// 白色按钮文字
class BtnTextWhiteWidget extends StatelessWidget {
  const BtnTextWhiteWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kBtnTextStyle.copyWith(
        color: Colors.white,
      ),
    );
  }
}

/// 头部内容
class WelcomeHeaderWidget extends StatelessWidget {
  const WelcomeHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ls04_bg_welcome_header),
        Positioned(
          top: 194,
          left: 40,
          child: Column(
            children: [
              AppIconWidget(),
              SizedBox(height: 8),
              Text(
                'Sour',
                style: kTitleTextStyle,
              ),
              SizedBox(height: 8),
              Text(
                'Best drink\nreceipes',
                style: kBodyTextStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}

/// App Icon
class AppIconWidget extends StatelessWidget {
  const AppIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.kIconBoxSize,
      height: AppDimensions.kIconBoxSize,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Image.asset(ls04_app_icon, width: 24, height: 32),
    );
  }
}
