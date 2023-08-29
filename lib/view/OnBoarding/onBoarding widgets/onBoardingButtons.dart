import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/Registeration%20screens/signup.dart';

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 335.w,
          height: 52.h,
          child: OutlinedButton(
            onPressed: () {
              Get.to(SignUp());
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xff00A9B7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: BorderSide(color: Color(0xff00A9B7)),
            ),
            child: Text(
              'Let\'s get started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: 335.w,
          height: 52.h,
          child: OutlinedButton(
            onPressed: () {
              Get.to(SignIn());
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: BorderSide(color: Color(0xff00A9B7)),
            ),
            child: Text(
              'I already have an account',
              style: TextStyle(
                color: Color(0xff00A9B7),
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
