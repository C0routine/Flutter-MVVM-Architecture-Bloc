import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppTextJa extends AppText {
  AppTextJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'MVVMアプリ';

  @override
  String get setting => '設定';

  @override
  String get theme => '画面設定';

  @override
  String get light => '明るいテーマ';

  @override
  String get dark => '暗いテーマ';

  @override
  String get halloween => 'ハロウィンテーマ';
}
