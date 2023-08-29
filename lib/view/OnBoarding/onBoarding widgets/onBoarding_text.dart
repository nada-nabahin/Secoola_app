import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingText extends StatelessWidget {
  String firstText;
  String secondText;
  OnBoardingText(
      {super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 271.w,
        child: Column(
          children: [
            Text(
              firstText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              secondText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xffA9AEB2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
