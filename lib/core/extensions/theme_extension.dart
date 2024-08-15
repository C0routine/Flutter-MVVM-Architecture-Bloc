import 'package:flutter/material.dart';
import 'package:architecture/core/config/app_theme.dart';
import 'package:architecture/core/config/app_color.dart';

extension ThemeShortcut on BuildContext {
  AppColor get color => Theme.of(this).extension<CustomAppThemeExtension>()!;
}
