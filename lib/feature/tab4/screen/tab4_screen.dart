
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Tab4 Screen',
            style: TextStyle(fontSize: 30.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
