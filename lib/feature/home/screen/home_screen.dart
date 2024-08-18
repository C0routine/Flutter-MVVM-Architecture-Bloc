import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
