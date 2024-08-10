import 'package:flutter/material.dart';
import 'package:architecture/core/config/style/app_color.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({
    super.key,
    required this.body,
    this.bottomNavigationBar,
  });

  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.background,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
