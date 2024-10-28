import 'package:flutter/material.dart';

import 'package:architecture/core/configs/app_color.dart';
import 'package:architecture/feature/setting/bloc/barrel.dart';

ThemeData customAppTheme(ThemeType type) {
  /// 현재 테마에 맞는 AppColor instance 생성
  final appColor = AppColor(type: type);

  return ThemeData(
    scaffoldBackgroundColor: appColor.bg100,
    extensions: <ThemeExtension>[
      AppColorThemeExtension(appColor: appColor, themeType: type),
      AppTextStyleThemeExtension(),
    ],
  );
}

/// App Color ThemeExtension
class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> implements AppColor {
  AppColorThemeExtension({required this.appColor, required this.themeType});

  final AppColor appColor;
  final ThemeType themeType;

  @override
  ThemeExtension<AppColorThemeExtension> copyWith() => this;

  @override
  ThemeExtension<AppColorThemeExtension> lerp(covariant ThemeExtension<AppColorThemeExtension>? other, double t) => this;

  bool get isDark => themeType == ThemeType.dark;

  bool get isLight => themeType == ThemeType.light;

  bool get isHalloween => themeType == ThemeType.halloween;

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
class AppTextStyleThemeExtension extends ThemeExtension<AppTextStyleThemeExtension> {
  @override
  ThemeExtension<AppTextStyleThemeExtension> copyWith() => this;

  @override
  ThemeExtension<AppTextStyleThemeExtension> lerp(covariant ThemeExtension<AppTextStyleThemeExtension>? other, double t) => this;

  final TextStyle font12b = const TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  final TextStyle font12n = const TextStyle(fontSize: 12, fontWeight: FontWeight.normal);

  final TextStyle font14b = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  final TextStyle font14n = const TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

  final TextStyle font16b = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final TextStyle font16n = const TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  final TextStyle font18b = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final TextStyle font18n = const TextStyle(fontSize: 18, fontWeight: FontWeight.normal);

  final TextStyle font20b = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final TextStyle font20n = const TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  final TextStyle font22b = const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  final TextStyle font22n = const TextStyle(fontSize: 22, fontWeight: FontWeight.normal);

  final TextStyle font24b = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  final TextStyle font24n = const TextStyle(fontSize: 24, fontWeight: FontWeight.normal);

  final TextStyle font26b = const TextStyle(fontSize: 26, fontWeight: FontWeight.bold);
  final TextStyle font26n = const TextStyle(fontSize: 26, fontWeight: FontWeight.normal);

  final TextStyle font28b = const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  final TextStyle font28n = const TextStyle(fontSize: 28, fontWeight: FontWeight.normal);

  final TextStyle font30b = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final TextStyle font30n = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
}
