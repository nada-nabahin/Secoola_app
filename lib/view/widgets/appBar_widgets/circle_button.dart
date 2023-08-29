import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleButton extends StatelessWidget {
  final IconData? icon;
  final String? text; // Optional text
  Color? circleButtonColor;
  final GestureTapCallback? onPressed;

  CircleButton({
    Key? key,
    this.icon,
    this.text,
    this.onPressed,
    this.circleButtonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(17),
          ),
          color: circleButtonColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              if (text != null)
                Text(
                  text!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
