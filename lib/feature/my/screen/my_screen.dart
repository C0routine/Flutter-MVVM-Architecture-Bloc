import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:architecture/core/router/app_router.dart';
import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/extensions/theme_extension.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.push(AppRouter.auth.path);
          },
          child: Text(
            'My Screen',
            style: TextStyle(fontSize: 30.sp, color: context.appColor.textPrimary),
          ),
        ),
      ),
    );
  }
}
