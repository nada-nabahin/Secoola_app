import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/textField.dart';
import 'package:secoola_app/view/Registeration%20screens/signin.dart';
import 'package:secoola_app/view/pick%20topic/pick_topic.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

import '../reset_password.dart';

class RegisterationForm extends StatelessWidget {
  String buttonLabel;
  final VoidCallback onPressed;
  RegisterationForm({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RegisterationTextField(
              label: 'Your email', textfieldIcon: Icons.email),
          SizedBox(
            height: 20.h,
          ),
          RegisterationTextField(
              label: 'Your password', textfieldIcon: Icons.lock),
          SizedBox(
            height: 20.h,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Get.to(const ResetPassword());
              },
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  color: Color(0xffA9AEB2),
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          CommonButton(buttonLabel: buttonLabel, onPressed: onPressed),
          SizedBox(
            height: 100.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(SignIn());
            },
            child: Text(
              'I already have an account',
              style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xff00A9B7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
