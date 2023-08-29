import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';

class ContainerUnderAppbar extends StatelessWidget {
  double containerHeight;
  String text;
  ContainerUnderAppbar(
      {super.key, required this.containerHeight, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: Color(0xff00A9B7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const SearchTextButton(),
          SizedBox(
            height: 15.h,
          ),
        ],
      ),
    );
  }
}
