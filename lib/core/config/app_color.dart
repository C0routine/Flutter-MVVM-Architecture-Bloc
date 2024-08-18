import 'package:flutter/material.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';

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

  abstract final Color bg100;
  abstract final Color bg200;
  abstract final Color bg300;

  abstract final Color primary100;
  abstract final Color primary200;
  abstract final Color primary300;

  abstract final Color accent100;
  abstract final Color accent200;

  abstract final Color textMain;
  abstract final Color textSub;
}

class LightAppColor implements AppColor {
  LightAppColor._init();

  static final LightAppColor _instance = LightAppColor._init();

  factory LightAppColor() {
    return _instance;
  }

  @override
  Color get accent100 => const Color(0xFF71c4ef); // #71c4ef

  @override
  Color get accent200 => const Color(0xFF00668c); // #00668c

  @override
  Color get bg100 => const Color(0xFFfffefb); // #fffefb

  @override
  Color get bg200 => const Color(0xFFf5f4f1); // #f5f4f1

  @override
  Color get bg300 => const Color(0xFFcccbc8); // #cccbc8

  @override
  Color get primary100 => const Color(0xFFd4eaf7); // #d4eaf7

  @override
  Color get primary200 => const Color(0xFFb6ccd8); // #b6ccd8

  @override
  Color get primary300 => const Color(0xFF3b3c3d); // #3b3c3d

  @override
  Color get textMain => const Color(0xFF1d1c1c); // #1d1c1c

  @override
  Color get textSub => const Color(0xFF313d44); // #313d44
}

class DarkAppColor implements AppColor {
  DarkAppColor._init();

  static final DarkAppColor _instance = DarkAppColor._init();

  factory DarkAppColor() {
    return _instance;
  }

  @override
  Color get accent100 => const Color(0xFF006fff); // #006fff

  @override
  Color get accent200 => const Color(0xFFe1ffff); // #e1ffff

  @override
  Color get bg100 => const Color(0xFF1E1E1E); // #1E1E1E

  @override
  Color get bg200 => const Color(0xFF2d2d2d); // #2d2d2d

  @override
  Color get bg300 => const Color(0xFF454545); // #454545

  @override
  Color get primary100 => const Color(0xFF0085ff); // #0085ff

  @override
  Color get primary200 => const Color(0xFF69b4ff); // #69b4ff

  @override
  Color get primary300 => const Color(0xFFe0ffff); // #e0ffff

  @override
  Color get textMain => const Color(0xFFffffff); // #ffffff

  @override
  Color get textSub => const Color(0xFF9e9e9e); // #9e9e9e
}
