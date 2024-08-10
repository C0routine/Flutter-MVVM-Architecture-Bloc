import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'My Screen',
            style: TextStyle(fontSize: 30.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
