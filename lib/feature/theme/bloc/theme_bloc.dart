import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:architecture/core/config/app_color.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ThemeInitialized>(_onThemeInitialized);
    on<ThemeChanged>(_onThemeChanged);

    /// Theme 초기화
    if (state.status == ThemeStatus.initial) {
      add(ThemeInitialized());
    }
  }

  /// Theme 초기화 이벤트 처리 (등록)
  void _onThemeInitialized(ThemeInitialized event, Emitter<ThemeState> emit) {
    final PlatformDispatcher dispatcher = SchedulerBinding.instance.platformDispatcher;

    final ThemeType themeType = dispatcher.platformBrightness == Brightness.light ? ThemeType.light : ThemeType.dark;

    /// ThemeState 초기화, appColor instance 값이 변경 되었음을 알림
    emit(state.copyWith(status: ThemeStatus.ready, type: themeType));

    /// 시스템 테마 변경 이벤트 등록
    dispatcher.onPlatformBrightnessChanged = () {
      final ThemeType themeType = dispatcher.platformBrightness == Brightness.light ? ThemeType.light : ThemeType.dark;
      add(ThemeChanged(type: themeType));
    };
  }

  /// 테마 변경 이벤트 처리
  /// appColor instance 값이 변경 되었음을 알림
  /// ThemeBloc 을 watch 하고 있어야 appColor 값이 변경 되었음을 감지하고 Rebuild 된다.
  void _onThemeChanged(ThemeChanged event, Emitter<ThemeState> emit) {
    emit(state.copyWith(type: event.type));
  }
}
