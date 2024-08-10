import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({super.key, required this.navigationShell, required this.children});

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
      color: Colors.grey[200],
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _bottomNavigatorBarItem(index: 0, label: 'Home', icon: Icons.home),
          _bottomNavigatorBarItem(index: 1, label: 'Tab2', icon: Icons.cable),
          _bottomNavigatorBarItem(index: 2, label: 'Tab3', icon: Icons.satellite_alt),
          _bottomNavigatorBarItem(index: 3, label: 'Tab4', icon: Icons.factory),
          _bottomNavigatorBarItem(index: 4, label: 'My', icon: Icons.person),
        ],
      ),
    );
  }

  Widget _bottomNavigatorBarItem({
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
              child: Icon(icon, color: isCurrentIndex ? Colors.blue : Colors.grey),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: isCurrentIndex ? 16 : 14,
                color: isCurrentIndex ? Colors.blue : Colors.grey,
                fontWeight: isCurrentIndex ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
