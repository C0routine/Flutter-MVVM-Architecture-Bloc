import 'package:flutter/material.dart';

import 'package:architecture/core/config/app_color.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';

ThemeData customAppTheme(ThemeType type) {
  /// 현재 테마에 맞는 AppColor instance 생성
  final appColor = AppColor(type: type);

  return ThemeData(
    scaffoldBackgroundColor: appColor.bg100,
    extensions: <ThemeExtension>[
      CustomAppThemeExtension(appColor: appColor, themeType: type),
    ],
  );
}

class CustomAppThemeExtension extends ThemeExtension<CustomAppThemeExtension> implements AppColor {
  CustomAppThemeExtension({required this.appColor, required this.themeType});

  final AppColor appColor;
  final ThemeType themeType;

  @override
  ThemeExtension<CustomAppThemeExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<CustomAppThemeExtension> lerp(covariant ThemeExtension<CustomAppThemeExtension>? other, double t) {
    return this;
  }

  bool get isDark => themeType == ThemeType.dark;

  bool get isLight => themeType == ThemeType.light;

  @override
  Color get accent100 => appColor.accent100;

  @override
  Color get accent200 => appColor.accent200;

  @override
  Color get bg100 => appColor.bg100;

  @override
  Color get bg200 => appColor.bg200;

  @override
  Color get bg300 => appColor.bg300;

  @override
  Color get primary100 => appColor.primary100;

  @override
  Color get primary200 => appColor.primary200;

  @override
  Color get primary300 => appColor.primary300;

  @override
  Color get textMain => appColor.textMain;

  @override
  Color get textSub => appColor.textSub;
}

extension ThemeShortcut on BuildContext {
  AppColor get appColor => Theme.of(this).extension<CustomAppThemeExtension>()!;
}
