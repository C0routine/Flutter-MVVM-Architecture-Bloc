import 'package:freezed_annotation/freezed_annotation.dart';

part 'modal_state.freezed.dart';

@freezed
class ModalState with _$ModalState {
  const factory ModalState({
    @Default(false) bool isVersionModalShowed,
    @Default(false) bool isAdModalShowed,
  }) = _ModalState;
}
