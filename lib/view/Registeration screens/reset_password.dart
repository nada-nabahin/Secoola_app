import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/backArrow_title.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/textField.dart';
import 'package:secoola_app/view/Registeration%20screens/recovery_code.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          BackArrowAndTitle(title: 'Reset Password'),
          SizedBox(
            height: 80.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: Text(
                  'Reset your password',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0.w),
                child: Text(
                  'Enter your email and a verification code to reset the password will be sent to your email.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          RegisterationTextField(
            label: 'Your email',
            textfieldIcon: Icons.lock,
          ),
          SizedBox(
            height: 30.h,
          ),
          CommonButton(
            buttonLabel: 'Send verification code',
            onPressed: () {
              Get.to(RecoveryCode());
            },
          )
        ],
      ),
    );
  }
}
