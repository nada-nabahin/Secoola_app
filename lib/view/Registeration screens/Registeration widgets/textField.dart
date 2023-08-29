import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterationTextField extends StatelessWidget {
  String label;
  IconData textfieldIcon;
  RegisterationTextField(
      {super.key, required this.label, required this.textfieldIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 52.h,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Color(0xff00A9B7),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          prefixIcon: Icon(
            textfieldIcon,
            color: Color(0xff00A9B7),
          ),
        ),
      ),
    );
  }
}
