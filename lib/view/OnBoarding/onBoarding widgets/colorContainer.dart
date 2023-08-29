import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContenerColoeOnbordingCustom extends StatelessWidget {
  Color? color;
  ContenerColoeOnbordingCustom({super.key, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 42.5.w),
      width: 300.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
