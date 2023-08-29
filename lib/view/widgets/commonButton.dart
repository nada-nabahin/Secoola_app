import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  String buttonLabel;
  final VoidCallback onPressed;
  CommonButton({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 52.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xff00A9B7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: BorderSide(color: Color(0xff00A9B7)),
        ),
        child: Text(
          buttonLabel,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
