import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppTextKo extends AppText {
  AppTextKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'MVVM 앱';

  @override
  String get setting => '설정';

  @override
  String get theme => '화면 설정';

  @override
  String get light => '밝은 테마';

  @override
  String get dark => '어두운 테마';

  @override
  String get halloween => '핼러윈 테마';
}
