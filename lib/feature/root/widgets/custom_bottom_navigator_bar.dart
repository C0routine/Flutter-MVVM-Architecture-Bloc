import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:architecture/core/config/app_theme.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({super.key, required this.navigationShell, required this.children});

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final List<({String label, IconData icon})> bottomNavigatorItem = [
      (label: 'Home', icon: Icons.home),
      (label: 'Tab2', icon: Icons.cable),
      (label: 'Tab3', icon: Icons.satellite_alt),
      (label: 'Tab4', icon: Icons.factory),
      (label: 'My', icon: Icons.person),
    ];

    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
      color: context.appColor.bg200,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: bottomNavigatorItem.mapIndexed((int index, item) {
          return _bottomNavigatorBarItem(
            context: context,
            index: index,
            label: item.label,
            icon: item.icon,
          );
        }).toList(),
      ),
    );
  }

  Widget _bottomNavigatorBarItem({
    required BuildContext context,
    required int index,
    required String label,
    required IconData icon,
  }) {
    final isCurrentIndex = index == navigationShell.currentIndex;

    return Expanded(
      child: GestureDetector(
        onTap: () => navigationShell.goBranch(index, initialLocation: false),
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 5),
            SizedBox(
              width: 25,
              height: 25,
              child: Icon(icon, color: isCurrentIndex ? context.appColor.primary300 : context.appColor.primary200),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: isCurrentIndex ? 16 : 14,
                color: isCurrentIndex ? context.appColor.textMain : context.appColor.textSub,
                fontWeight: isCurrentIndex ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
