import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/config/style/app_color.dart';
import 'package:architecture/core/router/app_router.dart';
import 'package:architecture/core/router/router_config.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeBloc>().state;
    return DefaultScreen(
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.push(AppRouter.auth.path);
          },
          child: Text(
            'My Screen',
            style: TextStyle(fontSize: 30.sp, color: appColor.textPrimary),
          ),
        ),
      ),
    );
  }
}
