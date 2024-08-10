import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:flutter/material.dart';

/// AppColor 추상 클래스 (Dark, Light 모두 사용 가능한 AppColor 를 구현)
/// [theme] 값에 따라 DarkAppColor 또는 LightAppColor instance 를 반환
abstract class AppColor {
  factory AppColor({ThemeType? type}) {
    if (type == ThemeType.light) {
      return LightAppColor();
    } else {
      return DarkAppColor();
    }
  }

  abstract final Color background;
  abstract final Color textPrimary;
}

class LightAppColor implements AppColor {
  LightAppColor._init();

  static final LightAppColor _instance = LightAppColor._init();

  factory LightAppColor() {
    return _instance;
  }

  @override
  Color get background => Colors.white;

  @override
  Color get textPrimary => Colors.black;
}

class DarkAppColor implements AppColor {
  DarkAppColor._init();

  static final DarkAppColor _instance = DarkAppColor._init();

  factory DarkAppColor() {
    return _instance;
  }

  @override
  Color get background => Colors.black;

  @override
  Color get textPrimary => Colors.white;
}
