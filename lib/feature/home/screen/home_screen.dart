import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/extensions/style_extension.dart';
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
          Text(context.text.appName),
          const ThemeSwitchWidget(),
          Skeletonizer(
            child: Container(
              width: 300,
              height: 200,
              color: context.color.primary200,
            ),
          ),
        ],
      ),
    );
  }
}
