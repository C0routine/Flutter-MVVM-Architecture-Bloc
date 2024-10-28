import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppTextEn extends AppText {
  AppTextEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'MVVM App';

  @override
  String get setting => 'Setting';

  @override
  String get theme => 'Theme Style';

  @override
  String get light => 'Light Theme';

  @override
  String get dark => 'Dark Theme';

  @override
  String get halloween => 'Halloween Theme';
}
