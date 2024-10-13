import 'package:flutter/material.dart';
import 'package:architecture/core/configs/app_theme.dart';
import 'package:architecture/core/configs/app_color.dart';
import 'package:architecture/feature/setting/bloc/barrel.dart';

extension ThemeShortcut on BuildContext {
  AppColor get color => Theme.of(this).extension<CustomAppThemeExtension>()!;
}

extension ThemeValueExtension on String? {
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
