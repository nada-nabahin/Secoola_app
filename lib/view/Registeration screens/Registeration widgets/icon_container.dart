import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContainer extends StatelessWidget {
  String imageLink;
  IconContainer({super.key, required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98.w,
      height: 52.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Image(
        image: AssetImage(imageLink),
        width: 28.w,
        height: 28.h,
      ),
    );
  }
}
