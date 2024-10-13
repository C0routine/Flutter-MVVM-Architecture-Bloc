import 'package:flutter/material.dart';
import 'package:architecture/feature/setting/bloc/barrel.dart';

sealed class SettingEvent {}

/// Setting 초기화 이벤트
class SettingInitialized extends SettingEvent {}

/// Setting 언어 변경 이벤트
class SettingThemeChanged extends SettingEvent {
  final ThemeType type;

  SettingThemeChanged({required this.type});
}

class SettingLocaleChanged extends SettingEvent {
  final Locale? locale;

  SettingLocaleChanged({required this.locale});
}
