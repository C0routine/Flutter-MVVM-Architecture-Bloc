import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:architecture/core/common/default_screen.dart';
import 'package:architecture/core/extensions/theme_extension.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Center(
        child: Text(
          'Auth Screen',
          style: TextStyle(fontSize: 30.sp, color: context.color.textMain),
        ),
      ),
    );
  }
}
