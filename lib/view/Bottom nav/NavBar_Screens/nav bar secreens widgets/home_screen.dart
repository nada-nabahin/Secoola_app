import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/model/category.dart';
import 'package:secoola_app/service/api.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
import 'package:secoola_app/view/details_course_screen.dart';
import 'package:secoola_app/view/widgets/CategoryTopicConatiner.dart';
import 'package:secoola_app/view/widgets/Notification_Container.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/SearchTextButton.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/circle_button.dart';

import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/widgets/listView_item.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Category>> futureCategory;

  @override
  void initState() {
    super.initState();
    futureCategory = ApiService.fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 190.h, // Set this height
          backgroundColor: Color(0xffFAFAFA),
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: 180.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color(0xff00A9B7),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hi,Dimas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                        ),
                      ),
                      Spacer(),

                      // add icon here!
                    ],
                  ),
                  Text(
                    "Let\'s start learning!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                  Spacer(),
                  const SearchTextButton(),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xffFAFAFA),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 180.h,
              ),
              Title_seeAll(
                title: 'Popular course',
                textButton_word: 'See All',
              ),
              Container(
                height: 230.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(CourseDetails());
                      },
                      child: ListViewItem(
                        containerHeight: 140.h,
                        containerWidth: 220.w,
                        containerColor: Color(0xffFFEA7D),
                        title: 'Design Thingking Fundamental',
                        personName: 'Robert Fix',
                        price: '\$150',
                        noteAboutPrice: 'Best Seller',
                        shadeColor: const Color(0xffFCE2EA),
                        noteColor: const Color(0xffFF6666),
                      ),
                    ),
                    ListViewItem(
                      containerHeight: 140.h,
                      containerWidth: 220.w,
                      containerColor: const Color(0xffA3CCDE),
                      title: 'Flutter Class - Advance Program',
                      personName: 'Wade Warren',
                      price: '\$24',
                      noteAboutPrice: 'Recommended',
                      shadeColor: const Color(0xffDCF3F5),
                      noteColor: const Color(0xff00A9B7),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Title_seeAll(
                title: 'Categories',
                textButton_word: 'See All',
              ),

              /////////////////////////////////////////////
              FutureBuilder<List<Category>>(
                future: futureCategory,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    List<Category> categories = snapshot.data!;
                    return Container(
                      height: 50.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: (categories.length / 2).ceil(),
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          return Padding(
                            padding: EdgeInsets.only(left: 15.0.w),
                            child: CategoryTopicConatiner(
                                topicIcon: category.image,
                                topicName: category.name),
                          );
                        },
                      ),
                    );
                  }
                },
              ),

              Title_seeAll(
                title: 'Your topic',
                textButton_word: 'See All',
              ),
              /////////////////////////////////////////////

              Container(
                height: 190.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xff86F2CB),
                      title: 'Design Thingking F...',
                      personName: 'Dianne Russell',
                      price: '\$75',
                      noteAboutPrice: 'Best deal',
                      shadeColor: Color(0xffDCF3F5),
                      noteColor: Color(0xff00A9B7),
                    ),
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffFCE2EA),
                      title: 'Figma Prototyping 1...',
                      personName: 'Jacob Jones',
                      price: '\$32',
                      noteAboutPrice: '',
                      shadeColor: Colors.white,
                      noteColor: Colors.white,
                    ),
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffFFB099),
                      title: 'UI UX Design Essentials',
                      personName: 'Esther Howard',
                      price: '\$83',
                      noteAboutPrice: 'deal',
                      shadeColor: Color(0xffDCF3F5),
                      noteColor: Color(0xff00A9B7),
                    ),
                  ],
                ),
              ),
              Title_seeAll(
                title: 'Your topic',
                textButton_word: 'See All',
              ),
              Container(
                height: 190.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffFFEA7D),
                      title: 'Flutter Class - Adv...',
                      personName: 'Cameron Williamson',
                      price: '\$97',
                      noteAboutPrice: '',
                      shadeColor: Colors.white,
                      noteColor: Colors.white,
                    ),
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xff86F2CB),
                      title: 'Python Class - Adv...',
                      personName: 'Brooklyn Simmons',
                      price: '\$56',
                      noteAboutPrice: 'Most sold',
                      shadeColor: Color(0xffDCF3F5),
                      noteColor: Color(0xff00A9B7),
                    ),
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffFFEA7D),
                      title: 'Swift Class - Adv...',
                      personName: 'Cameron Williamson',
                      price: '\$41',
                      noteAboutPrice: 'Label',
                      shadeColor: Color(0xffDCF3F5),
                      noteColor: Color(0xff00A9B7),
                    ),
                  ],
                ),
              ),

              Title_seeAll(
                title: 'Your topic',
                textButton_word: 'See All',
              ),
              Container(
                height: 190.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffFFB099),
                      title: 'Digital Marketing S...',
                      personName: 'Esther Howard',
                      price: '\$49',
                      noteAboutPrice: 'Hot deals',
                      shadeColor: Color(0xffFCE2EA),
                      noteColor: Color(0xffFF6666),
                    ),
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffD0B2FF),
                      title: 'Personal Branding F...',
                      personName: 'Savannah Nguyen',
                      price: '\$66',
                      noteAboutPrice: '',
                      shadeColor: Colors.white,
                      noteColor: Colors.white,
                    ),
                    ListViewItem(
                      containerHeight: 100.h,
                      containerWidth: 142.w,
                      containerColor: Color(0xffA3CCDE),
                      title: 'Neuromarketing & Ma... ',
                      personName: 'Arlene McCoy',
                      price: '\$41',
                      noteAboutPrice: 'Label',
                      shadeColor: Color(0xffDCF3F5),
                      noteColor: Color(0xff00A9B7),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// shopping Bottom Sheet/////////
  void _shoppingBottomSheet(BuildContext context) {
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
                        onPressed: () {},
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

  void _notificationBottomSheet(BuildContext context) {
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
                        color: const Color(0xffFAFAFA),
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
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(23),
                      topRight: Radius.circular(23),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.h,
                      left: 15.w,
                      right: 15.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notification',
                          style: TextStyle(fontSize: 24.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Today',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        NotificationContainer(
                          text1: 'Your payment is success',
                          text2: 'Start your course now.',
                          notificationIcon: Icons.payment,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        NotificationContainer(
                          text1: 'Daily reminder',
                          text2: 'Continue you recent course. ',
                          notificationIcon: Icons.notifications,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Yesterday',
                          style: TextStyle(fontSize: 18.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        NotificationContainer(
                          text1: 'Download your certificate',
                          text2: 'Go to account page to down...',
                          notificationIcon: Icons.file_download_outlined,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        NotificationContainer(
                          text1: 'Summer sale!',
                          text2: 'Get the best offer only for you.',
                          notificationIcon: Icons.discount,
                        )
                      ],
                    ),
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
