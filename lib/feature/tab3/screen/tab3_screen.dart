
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Tab3 Screen',
            style: TextStyle(fontSize: 30.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
