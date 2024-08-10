import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

import 'package:architecture/feature/root/widgets/custom_bottom_navigator_bar.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key, required this.navigationShell, required this.children});

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ...widget.children.mapIndexed((int index, Widget navigator) {
            final isCurrentIndex = index == widget.navigationShell.currentIndex;
            return AnimatedOpacity(
              opacity: isCurrentIndex ? 1 : 0,
              duration: const Duration(milliseconds: 550),
              child: IgnorePointer(
                ignoring: !isCurrentIndex,
                child: TickerMode(
                  enabled: isCurrentIndex,
                  child: navigator,
                ),
              ),
            );
          }),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigatorBar(
        navigationShell: widget.navigationShell,
        children: widget.children,
      ),
    );
  }
}
