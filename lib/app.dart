import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:architecture/core/configs/app_theme.dart';
import 'package:architecture/core/router/router_config.dart';

import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:architecture/feature/modal/bloc/barrel.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy: false, create: (context) => ThemeBloc()),
        BlocProvider(create: (context) => ModalBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (BuildContext context, state) {
          return MaterialApp.router(
            theme: customAppTheme(state.type),
            routerConfig: routerConfig,
          );
        },
      ),
    );
  }
}
