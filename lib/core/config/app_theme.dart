import 'package:architecture/core/config/app_color.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:flutter/material.dart';

ThemeData customAppTheme(ThemeType type) {
  /// 현재 테마에 맞는 AppColor instance 생성
  final appColor = AppColor(type: type);

  return ThemeData(
    scaffoldBackgroundColor: appColor.background,
    extensions: <ThemeExtension>[
      CustomAppThemeExtension(appColor: appColor),
    ],
  );
}

class CustomAppThemeExtension extends ThemeExtension<CustomAppThemeExtension> implements AppColor {
  CustomAppThemeExtension({required this.appColor});

  final AppColor appColor;

  @override
  ThemeExtension<CustomAppThemeExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<CustomAppThemeExtension> lerp(covariant ThemeExtension<CustomAppThemeExtension>? other, double t) {
    return this;
  }

  @override
  Color get background => appColor.background;

  @override
  Color get textPrimary => appColor.textPrimary;
}

extension ThemeShortcut on BuildContext {
  AppColor get appColor => Theme.of(this).extension<CustomAppThemeExtension>()!;
}
