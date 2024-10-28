import 'package:architecture/core/extensions/style_extension.dart';
import 'package:flutter/material.dart';

import 'package:architecture/core/common/default_screen.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Center(
        child: Text(
          'Tab2 Screen',
          style: TextStyle(
            fontSize: 30,
            color: context.color.textMain,
          ),
        ),
      ),
    );
  }
}
