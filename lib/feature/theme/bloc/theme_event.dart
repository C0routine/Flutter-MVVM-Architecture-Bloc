import 'package:architecture/feature/theme/bloc/barrel.dart';

/// 테마 이벤트
sealed class ThemeEvent {}

/// 테마 초기화 이벤트
class ThemeInitialized extends ThemeEvent {}

/// Theme 변경 이벤트 [type]에 따라 테마를 변경한다.
class ThemeChanged extends ThemeEvent {
  final ThemeType type;

  ThemeChanged({required this.type});
}
