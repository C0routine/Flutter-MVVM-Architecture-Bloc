
import 'package:flutter/material.dart';

sealed class ModalEvent {}

/// 버전 모달을 초기화 후 보여주는 이벤트
class VersionModalShowed extends ModalEvent {
  final BuildContext context;

  VersionModalShowed({required this.context});
}

/// 광고 모달을 초기화 후 보여주는 이벤트
class AdModalShowed extends ModalEvent {
  final BuildContext context;

  AdModalShowed({required this.context});
}