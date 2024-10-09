import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:architecture/core/configs/app_theme.dart';
import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/feature/home/widgets/theme_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ThemeSwitchWidget(),
          Skeletonizer(
            child: Container(
              width: 300,
              height: 200,
              color: context.appColor.primary200,
            ),
          ),
        ],
      ),
    );
  }
}
