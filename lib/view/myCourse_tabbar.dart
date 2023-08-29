import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/courseScreenTopic.dart';
import 'package:secoola_app/view/widgets/curriculam_item.dart';

class MyCourseTabbar extends StatefulWidget {
  // final String tabLabel;
  // final String tabLabel2;

  // const TabBarVieWidget({
  //   Key? key,
  //   required this.tabLabel,
  //   required this.tabLabel2,
  // }) : super(key: key);

  @override
  State<MyCourseTabbar> createState() => _MyCourseTabbarState();
}

class _MyCourseTabbarState extends State<MyCourseTabbar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              indicatorColor: const Color(0xff00A9B7),
              indicator: BoxDecoration(
                color: const Color(0xff00A9B7),
                borderRadius: BorderRadius.circular(15),
              ),
              tabs: [
                Tab(
                  child: Container(
                    width: 158.w,
                    height: 38.h,
                    alignment: Alignment.center,
                    child: const Text("Ongoing"),
                  ),
                ),
                Tab(
                  child: Container(
                    width: 158.w,
                    height: 38.h,
                    alignment: Alignment.center,
                    child: const Text("Complete"),
                  ),
                ),
              ],
            ),
            /*  const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 264,
              width: double.infinity,
              child: TabBarView(
                controller: tabController,
                children: [
                  //Ongoing
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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

                  //ٌComplete
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
