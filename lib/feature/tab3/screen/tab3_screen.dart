import 'package:flutter/material.dart';

import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/extensions/style_extension.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Center(
        child: Text(
          'Tab3 Screen',
          style: TextStyle(fontSize: 30, color: context.color.textMain),
        ),
      ),
    );
  }
}
