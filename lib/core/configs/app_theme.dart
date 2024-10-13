import 'package:flutter/material.dart';

import 'package:architecture/core/configs/app_color.dart';
import 'package:architecture/feature/setting/bloc/barrel.dart';

extension ThemeShortcut on BuildContext {
  AppColor get appColor => Theme.of(this).extension<CustomAppThemeExtension>()!;
  CustomAppTextExtension get textStyle => Theme.of(this).extension<CustomAppTextExtension>()!;
}

ThemeData customAppTheme(ThemeType type) {
  /// 현재 테마에 맞는 AppColor instance 생성
  final appColor = AppColor(type: type);

  return ThemeData(
    scaffoldBackgroundColor: appColor.bg100,
    extensions: <ThemeExtension>[
      CustomAppThemeExtension(appColor: appColor, themeType: type),
      CustomAppTextExtension(),
    ],
  );
}

/// App Color ThemeExtension
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

/// App TextStyle ThemeExtension
class CustomAppTextExtension extends ThemeExtension<CustomAppTextExtension> {
  @override
  ThemeExtension<CustomAppTextExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<CustomAppTextExtension> lerp(covariant ThemeExtension<CustomAppTextExtension>? other, double t) {
    return this;
  }

  final TextStyle title20b = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle title20n = const TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  final TextStyle body16b = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final TextStyle body16n = const TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
}
