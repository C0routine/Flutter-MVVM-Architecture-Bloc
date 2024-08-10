import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Home Screen',
            style: TextStyle(fontSize: 30.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
