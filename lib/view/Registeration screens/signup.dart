import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/icon_container.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/registeration_form.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/pick%20topic/pick_topic.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Padding(
        padding: EdgeInsets.only(left: 5.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Create your account to start your course lessons.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA9AEB2),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconContainer(
                    imageLink: 'assets/iconImages/google.png',
                  ),
                  IconContainer(imageLink: 'assets/iconImages/facebook.png'),
                  IconContainer(
                    imageLink: 'assets/iconImages/apple-logo.png',
                  ),
                ],
              ),
              SizedBox(
                height: 55.h,
              ),
              Text(
                textAlign: TextAlign.center,
                'Or sign up with your email',
                style: TextStyle(
                  color: Color(0xffA9AEB2),
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              //sign up form
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: RegisterationForm(
                  buttonLabel: 'Sign up',
                  onPressed: () {
                    Get.to(PickTopic());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
