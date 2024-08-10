import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/extensions/theme_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.read<ThemeBloc>().add(ThemeChanged(type: ThemeType.light));
            },
            child: Text(
              'Light Screen',
              style: TextStyle(fontSize: 30.sp, color: context.appColor.textPrimary),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.read<ThemeBloc>().add(ThemeChanged(type: ThemeType.dark));
            },
            child: Text(
              'Dark Screen',
              style: TextStyle(fontSize: 30.sp, color: context.appColor.textPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
