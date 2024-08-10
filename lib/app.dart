import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:architecture/core/config/app_style.dart';
import 'package:architecture/core/config/app_theme.dart';
import 'package:architecture/core/router/router_config.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        AppStyle.designSizeWidth,
        AppStyle.designSizeHeight,
      ),
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return BlocProvider(
          lazy: false,
          create: (BuildContext context) => ThemeBloc(),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (BuildContext context, state) {
              return MaterialApp.router(
                theme: customAppTheme(state.type),
                routerConfig: routerConfig,
              );
            },
          ),
        );
      },
    );
  }
}
