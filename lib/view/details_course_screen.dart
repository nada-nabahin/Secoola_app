import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/widgets/courseDetails_bottom.dart';
import 'package:secoola_app/view/widgets/courseScreenTopic.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';
import 'package:secoola_app/view/widgets/tabbar_courseDetails.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseState();
}

class _CourseState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFEA7D),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CircleButton(
              circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.2),
              icon: Icons.arrow_back,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: CircleButton(
                circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.2),
                icon: Icons.shopping_cart,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 250.h,
              width: double.infinity,
              color: const Color(0xffFFEA7D),
              child: Center(
                child: CircleButton(
                  text: 'Course preview',
                  icon: Icons.play_circle,
                  circleButtonColor: const Color.fromRGBO(112, 112, 112, 0.2),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200.h),
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 25.h, left: 16.w, right: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Design Thinking Fundamental',
                                  style: TextStyle(fontSize: 20.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    PersonWidget(
                                      personName: 'Halo Academy',
                                      iconColor: Color(0xff00A9B7),
                                      fontSize: 16.sp,
                                    ),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star_sharp,
                                          color: Colors.amber[300],
                                          size: 16,
                                        ),
                                        SizedBox(width: 5.w),
                                        Text(
                                          '4.8',
                                          style: TextStyle(fontSize: 16.sp),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  textAlign: TextAlign.left,
                                  'Description this is a simple description that explain\n the description about the class or blabla bla and then\n blablabla of course.',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xffA9AEB2),
                                  ),
                                ),
                                SizedBox(
                                  height: 25.h,
                                ),
                                //details///////////////
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Students',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffA9AEB2),
                                          ),
                                        ),
                                        Text(
                                          '143.247',
                                          style: TextStyle(fontSize: 16.sp),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          'Last update',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffA9AEB2),
                                          ),
                                        ),
                                        Text(
                                          'Feb 2, 2021',
                                          style: TextStyle(fontSize: 16.sp),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Language',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffA9AEB2),
                                          ),
                                        ),
                                        Text(
                                          'English',
                                          style: TextStyle(fontSize: 16.sp),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          'Subtitle',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xffA9AEB2),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'English and ',
                                              style: TextStyle(fontSize: 16.sp),
                                            ),
                                            Text(
                                              '5 more',
                                              style: TextStyle(
                                                color: Color(0xff00A9B7),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          TabBarVieWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    //price
                    const CourseDetailsBottomContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 760.h,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w, bottom: 10.h),
                    child: Container(
                      height: 52.h,
                      width: 52.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.clear,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(23),
                      topRight: Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 65.h),
                      ContenerColoeOnbordingCustom(
                        color: const Color(0xffFFEA7D),
                      ),
                      SizedBox(
                        height: 90.h,
                      ),
                      OnBoardingText(
                          firstText: 'Nothing here yet',
                          secondText:
                              'You haven\'t added anything to your cart ,\n start exploring your favorite courses!'),
                      SizedBox(
                        height: 75.h,
                      ),
                      CommonButton(
                        buttonLabel: 'Explore course',
                        onPressed: () {
                          Get.to(const BottomNavManager());
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
