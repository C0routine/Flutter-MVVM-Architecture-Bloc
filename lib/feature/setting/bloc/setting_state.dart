import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

enum ThemeType { light, dark, halloween, system }

enum SettingStatus { initial, ready }

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    /// 테마 타입
    @Default(ThemeType.system) ThemeType themeType,

    /// 언어 타입
    Locale? locale,
  }) = _SettingState;
}
