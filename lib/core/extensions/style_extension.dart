import 'package:flutter/material.dart';

/// Padding, Margin 를 설정하기 위한 Extension
extension AppStyleEdgeInsetsExtension on num {
  EdgeInsets get eAll => EdgeInsets.all(toDouble());

  EdgeInsets get eVertical => EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsets get eHorizontal => EdgeInsets.symmetric(horizontal: toDouble());

  /// this 를 특정 부분에만 설정
  EdgeInsets eOnly({
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) {
    final value = toDouble();
    return EdgeInsets.only(
      left: left ? value : 0.0,
      right: right ? value : 0.0,
      top: top ? value : 0.0,
      bottom: bottom ? value : 0.0,
    );
  }

  /// this 를 모든 부분에 설정하고, 특정 부분만 다른 값으로 설정
  EdgeInsets eAdjust({
    num? left,
    num? right,
    num? top,
    num? bottom,
  }) {
    final value = toDouble();
    return EdgeInsets.only(
      left: left != null ? left.toDouble() : value,
      right: right != null ? right.toDouble() : value,
      top: top != null ? top.toDouble() : value,
      bottom: bottom != null ? bottom.toDouble() : value,
    );
  }
}

/// BorderRadius 를 설정하기 위한 Extension
extension AppStyleBorderRadiusExtension on num {
  BorderRadius get brAll => BorderRadius.circular(toDouble());

  BorderRadius get brTop =>
      BorderRadius.vertical(top: Radius.circular(toDouble()));

  BorderRadius get brBottom =>
      BorderRadius.vertical(bottom: Radius.circular(toDouble()));

  BorderRadius get brLeft =>
      BorderRadius.horizontal(left: Radius.circular(toDouble()));

  BorderRadius get brRight =>
      BorderRadius.horizontal(right: Radius.circular(toDouble()));

  /// this 를 특정 부분에만 설정
  BorderRadius brOnly({
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
  }) {
    final value = toDouble();
    return BorderRadius.only(
      topLeft: topLeft ? Radius.circular(value) : Radius.zero,
      topRight: topRight ? Radius.circular(value) : Radius.zero,
      bottomLeft: bottomLeft ? Radius.circular(value) : Radius.zero,
      bottomRight: bottomRight ? Radius.circular(value) : Radius.zero,
    );
  }

  /// this 를 모든 부분에 설정하고, 특정 부분만 다른 값으로 설정
  BorderRadius brAdjust({
    num? topLeft,
    num? topRight,
    num? bottomLeft,
    num? bottomRight,
  }) {
    final value = toDouble();
    return BorderRadius.only(
      topLeft: topLeft != null
          ? Radius.circular(topLeft.toDouble())
          : Radius.circular(value),
      topRight: topRight != null
          ? Radius.circular(topRight.toDouble())
          : Radius.circular(value),
      bottomLeft: bottomLeft != null
          ? Radius.circular(bottomLeft.toDouble())
          : Radius.circular(value),
      bottomRight: bottomRight != null
          ? Radius.circular(bottomRight.toDouble())
          : Radius.circular(value),
    );
  }
}
