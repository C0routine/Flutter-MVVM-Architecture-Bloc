import 'dart:io';
import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:architecture/core/utils/storage_utils.dart';
import 'package:architecture/feature/setting/bloc/barrel.dart';
import 'package:architecture/core/extensions/style_extension.dart';
import 'package:architecture/core/configs/.gen/app_localizations.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<SettingInitialized>(_onSettingInitialized);
    on<SettingThemeChanged>(_onSettingThemeChanged);
    on<SettingLocaleChanged>(_onSettingLocaleChanged);
  }

  /// Setting 초기화 이벤트 처리 (등록)
  Future<void> _onSettingInitialized(SettingInitialized event, Emitter<SettingState> emit) async {
    final PlatformDispatcher dispatcher = SchedulerBinding.instance.platformDispatcher;

    // 저장한 테마 값 가져오기
    final String? saveTheme = await storage.read(key: 'theme', iOptions: storageIOSOptions);

    // 저장한 테마 값으로 테마 설정
    ThemeType theme = saveTheme.getThemeType();
    if (theme == ThemeType.system) {
      // TODO: Special Theme 가져오는지 확인하는 로직 추가 필요
      theme = dispatcher.platformBrightness == Brightness.light ? ThemeType.light : ThemeType.dark;
    }

    final String? languageCode = await storage.read(key: 'languageCode', iOptions: storageIOSOptions);

    // 저장한 언어 값으로 언어 설정 (없으면 기기 언어로 설정)
    // iOS 에서는 국가 코드가 포함되어 있어서 언어 코드만 추출
    Locale locale = Locale(languageCode ?? Platform.localeName.split('_').first);

    // 지원하는 언어가 아닌 경우 기본 언어(english)로 설정
    if (!AppText.delegate.isSupported(locale)) {
      locale = const Locale('en');
    }

    emit(
      state.copyWith(
        themeType: theme,
        locale: locale,
      ),
    );

    /// 시스템 테마 변경 이벤트 등록
    dispatcher.onPlatformBrightnessChanged = () async {
      // 저장한 테마 값이 System 인지 확인
      final String? saveTheme = await storage.read(key: 'theme', iOptions: storageIOSOptions);

      final ThemeType themeType = saveTheme.getThemeType();
      if (themeType != ThemeType.system) return;

      add(SettingThemeChanged(
        type: dispatcher.platformBrightness == Brightness.light ? ThemeType.light : ThemeType.dark,
      ));
    };
  }

  /// 테마 변경 이벤트 처리
  /// appColor instance 값이 변경 되었음을 알림
  /// SettingBloc 을 watch 하고 있어야 appColor 값이 변경 되었음을 감지하고 Rebuild 된다.
  void _onSettingThemeChanged(SettingThemeChanged event, Emitter<SettingState> emit) {
    emit(state.copyWith(themeType: event.type));
  }

  /// 언어 변경 이벤트 처리
  /// appColor instance 값이 변경 되었음을 알림
  /// SettingBloc 을 watch 하고 있어야 appColor 값이 변경 되었음을 감지하고 Rebuild 된다.
  void _onSettingLocaleChanged(SettingLocaleChanged event, Emitter<SettingState> emit) {
    emit(state.copyWith(locale: event.locale));
  }
}
