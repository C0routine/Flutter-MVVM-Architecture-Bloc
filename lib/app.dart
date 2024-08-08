import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:architecture/core/config/style/app_style.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        AppStyle.designSizeWidth,
        AppStyle.designSizeHeight,
      ),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp();
      },
    );
  }
}
