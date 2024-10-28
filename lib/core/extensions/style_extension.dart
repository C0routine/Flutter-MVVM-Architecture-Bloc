import 'package:flutter/material.dart';

import 'package:architecture/core/configs/app_color.dart';
import 'package:architecture/core/configs/app_theme.dart';
import 'package:architecture/feature/setting/bloc/setting_state.dart';
import 'package:architecture/core/configs/.gen/app_localizations.dart';

/// App 전역에서 사용하는 Style 관련(Text, color, textStyle) Extensions
extension AppStyleExtensions on BuildContext {
  AppText get text => AppText.of(this)!;

  AppColor get color => Theme.of(this).extension<AppColorThemeExtension>()!;

  AppTextStyleThemeExtension get textStyle => Theme.of(this).extension<AppTextStyleThemeExtension>()!;

  bool get isLightMode => Theme.of(this).extension<AppColorThemeExtension>()!.isLight;

  bool get isDarkMode => Theme.of(this).extension<AppColorThemeExtension>()!.isDark;

  bool get isHalloweenMode => Theme.of(this).extension<AppColorThemeExtension>()!.isHalloween;
}

extension ThemeTypeValueExtension on String? {
  ThemeType getThemeType() {
    switch (this) {
      case 'light':
        return ThemeType.light;
      case 'dark':
        return ThemeType.dark;
      case 'halloween':
        return ThemeType.halloween;
      default:
        return ThemeType.system;
    }
  }
}
