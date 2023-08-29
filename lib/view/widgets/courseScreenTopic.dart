import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseScreenTopic extends StatelessWidget {
  String title;
  String personName;
  Color? shadeColor;
  Color? noteColor;
  Color? containerColor;
  final String noteAboutCourse;
  String progress;
  String dueTime;
  double percentrdegree;

  CourseScreenTopic(
      {super.key,
      required this.title,
      required this.personName,
      this.shadeColor,
      this.noteColor,
      required this.noteAboutCourse,
      required this.progress,
      required this.dueTime,
      required this.percentrdegree,
      this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      height: 186.h,
      width: 335.w,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 68.h,
                width: 68.w,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //title under the container
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  //person name & icon
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 18,
                        color: Color(0xffA9AEB2),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                      ),
                      Text(
                        personName,
                        style: TextStyle(
                          color: Color(0xffA9AEB2),
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 50.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: shadeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        noteAboutCourse,
                        style: TextStyle(
                          color: noteColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          //progress & due time
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Progress',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffA9AEB2),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    progress,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff1D2D3A),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 60.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Due time',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffA9AEB2),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    dueTime,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff1D2D3A),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 1000,
            lineHeight: 8.h,
            percent: percentrdegree,
            progressColor: Color(0xff00CDB1),
            backgroundColor: Color(0xffF6F6F6),
          ),
        ],
      ),
    );
  }
}
