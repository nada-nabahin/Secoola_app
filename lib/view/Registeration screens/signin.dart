import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/icon_container.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/registeration_form.dart';
import 'package:secoola_app/view/pick%20topic/pick_topic.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(width: 15.w),
                      Image(
                        image: AssetImage('assets/iconImages/wave.png'),
                        height: 24.h,
                        width: 24.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Login to your account to continue your course.',
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
                'Or login with your email',
                style: TextStyle(
                  color: Color(0xffA9AEB2),
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              //sign up forms
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: RegisterationForm(
                  buttonLabel: 'Login',
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
