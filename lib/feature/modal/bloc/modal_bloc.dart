import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:architecture/core/constants/app_keys.dart';
import 'package:architecture/core/utils/firebase_utils.dart';
import 'package:architecture/feature/modal/bloc/barrel.dart';
import 'package:architecture/feature/modal/widgets/version_modal_widget.dart';

class ModalBloc extends Bloc<ModalEvent, ModalState> {
  ModalBloc() : super(const ModalState()) {
    on<VersionModalShowed>(_onVersionModalShowed);
    on<AdModalShowed>(_onAdModalShowed);
  }

  /// 버전 모달을 초기화 후 보여주는 이벤트 처리
  Future<void> _onVersionModalShowed(VersionModalShowed event, Emitter<ModalState> emit) async {
    if (state.isVersionModalShowed) return;

    emit(const ModalState(isVersionModalShowed: true));

    final configs = await FirebaseUtils.getRemoteConfigValue();

    /// 앱 버전 정보 가져오기
    final appVersion = configs[AppKeys.remoteConfigAppVersion]?.asString();

    /// 앱 버전 정보가 없으면 종료
    if (appVersion == null) return;

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final currentVersion = packageInfo.version;

    final version = jsonDecode(appVersion);
    final aosVersion = version[AppKeys.aosVersion];
    final bool aosForceUpdate = bool.tryParse(version[AppKeys.aosForceUpdate]) ?? false;
    final String iosVersion = version[AppKeys.iosVersion];
    final bool iosForceUpdate = bool.tryParse(version[AppKeys.iosForceUpdate]) ?? false;

    if (!event.context.mounted) return;

    await _showVersionModal(
      context: event.context,
      latestVersion: Platform.isIOS ? iosVersion : aosVersion,
      forceUpdate: Platform.isIOS ? iosForceUpdate : aosForceUpdate,
      currentVersion: currentVersion,
    );
  }

  /// 버전 모달을 버전에 따라 강제 또는 선택적으로 보여주는 처리
  Future<void> _showVersionModal({
    required BuildContext context,
    required String latestVersion,
    required String currentVersion,
    required bool forceUpdate,
  }) async {
    if (latestVersion == currentVersion) return;

    /// 테마 변경 시간을 위한 딜레이
    await Future.delayed(const Duration(seconds: 1));

    if (!context.mounted) return;

    /// 강제 업데이트 여부에 따라 다른 모달을 보여줌
    await Navigator.of(context).push(VersionModalWidget(
      context: context,
      isForceUpdate: forceUpdate,
    ));
  }

  /// 광고 모달을 초기화 후 보여주는 이벤트 처리
  Future<void> _onAdModalShowed(AdModalShowed event, Emitter<ModalState> emit) async {}
}
