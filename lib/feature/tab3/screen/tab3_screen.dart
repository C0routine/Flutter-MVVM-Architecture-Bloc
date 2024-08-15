import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/extensions/theme_extension.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Center(
        child: Text(
          'Tab3 Screen',
          style: TextStyle(fontSize: 30.sp, color: context.color.textPrimary),
        ),
      ),
    );
  }
}
