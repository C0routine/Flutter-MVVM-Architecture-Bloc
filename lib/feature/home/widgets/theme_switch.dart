import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:architecture/feature/theme/bloc/barrel.dart';
import 'package:architecture/core/extensions/theme_extension.dart';

class ThemeSwitchWidget extends StatefulWidget {
  const ThemeSwitchWidget({super.key});

  @override
  State<ThemeSwitchWidget> createState() => _ThemeSwitchWidgetState();
}

class _ThemeSwitchWidgetState extends State<ThemeSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 16, color: context.color.textPrimary);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Light Mode', style: textStyle),
        const SizedBox(width: 20),
        BlocBuilder<ThemeBloc, ThemeState>(
          builder: (BuildContext context, state) {
            final isDark = state.type == ThemeType.dark;
            return Switch(
              value: isDark,
              onChanged: (bool result) {
                context.read<ThemeBloc>().add(ThemeChanged(type: result ? ThemeType.dark : ThemeType.light));
              },
            );
          },
        ),
        const SizedBox(width: 20),
        Text('Dark Mode', style: textStyle),
      ],
    );
  }
}
