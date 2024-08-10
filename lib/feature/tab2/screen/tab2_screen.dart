
import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/config/style/app_color.dart';
import 'package:architecture/feature/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeBloc>();

    return DefaultScreen(
      body: Center(
        child: Text(
          'Tab2 Screen',
          style: TextStyle(fontSize: 30.sp, color: appColor.textPrimary),
        ),
      ),
    );
  }
}
