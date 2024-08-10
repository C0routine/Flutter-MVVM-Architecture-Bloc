import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

enum ThemeStatus { initial, ready }

enum ThemeType { light, dark, cityNight, custom }

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(ThemeStatus.initial) ThemeStatus status,
    @Default(ThemeType.light) ThemeType type,
  }) = _ThemeState;
}
