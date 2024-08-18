import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'package:architecture/core/config/firebase_options.dart';

/// Firebase 관련 유틸리티
class FirebaseUtils {
  /// Firebase 초기화
  static Future<void> initialized() async {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    /// RemoteConfig 초기화
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(hours: 6),
    ));
  }

  /// RemoteConfig 가져오기
  static Future<Map<String, RemoteConfigValue>> getRemoteConfigValue() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();

    final configs = remoteConfig.getAll();
    return configs;
  }
}
