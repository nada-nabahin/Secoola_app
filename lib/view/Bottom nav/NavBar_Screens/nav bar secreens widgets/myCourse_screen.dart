import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/myCourse_tabbar.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/container_under_appbar.dart';
import 'package:secoola_app/view/widgets/courseScreenTopic.dart';

import '../../../widgets/appBar_widgets/SearchTextButton.dart';

class MyCourseScreen extends StatefulWidget {
  MyCourseScreen({super.key});

  @override
  State<MyCourseScreen> createState() => _MyCourseScreenState();
}

class _MyCourseScreenState extends State<MyCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xff00A9B7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'My Course',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
          ),
        ),
      ),
      backgroundColor: const Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerUnderAppbar(
              containerHeight: 150.h,
              text: '',
            ),
            SizedBox(
              height: 20.h,
            ),
            MyCourseTabbar(),
            SizedBox(
              height: 40.h,
            ),
            CourseScreenTopic(
              percentrdegree: .8,
              containerColor: const Color(0xffFFEA7D),
              title: 'Design Thingking Fundamental',
              personName: 'Dianne Russell',
              noteAboutCourse: 'Label',
              noteColor: const Color(0xff00A9B7),
              shadeColor: const Color(0xffDCF3F5),
              progress: '20/29 lesson',
              dueTime: 'November 2, 2021',
            ),
            CourseScreenTopic(
              percentrdegree: .3,
              containerColor: const Color(0xffDCF3F5),
              title: 'Design Thingking Fundamental',
              personName: 'Dianne Russell',
              noteAboutCourse: 'Label',
              noteColor: const Color(0xff00A9B7),
              shadeColor: const Color(0xffDCF3F5),
              progress: '7/32 lesson',
              dueTime: 'August 24, 2021',
            ),
            CourseScreenTopic(
              percentrdegree: .6,
              containerColor: const Color(0xffFFB099),
              title: 'Design Thingking Fundamental',
              personName: 'Dianne Russell',
              noteAboutCourse: 'Label',
              noteColor: const Color(0xff00A9B7),
              shadeColor: const Color(0xffDCF3F5),
              progress: '28/40 lesson',
              dueTime: 'August 24, 2021',
            ),
          ],
        ),
      ),
    );
  }
}
