import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/myCourse_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';

class PaymentSucess extends StatelessWidget {
  const PaymentSucess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200.h,
          ),
          Center(
            child: ContenerColoeOnbordingCustom(
              color: Color(0xffFFEA7D),
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Center(
            child: Text(
              'Transaction suceess',
              style: TextStyle(
                fontSize: 24.sp,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            textAlign: TextAlign.center,
            'Congratulation! Your transaction is successful,\n you can start your course now.',
            style: TextStyle(
              fontSize: 14.sp,
              color: Color(0xff899197),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff00A9B7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 60.w,
                right: 60.w,
                top: 12.h,
                bottom: 12.h,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.to(MyCourseScreen());
                },
                child: Text(
                  textAlign: TextAlign.center,
                  'Go to my course',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(BottomNavManager());
            },
            child: Text(
              'Back to Home',
              style: TextStyle(
                color: Color(0xff00A9B7),
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
