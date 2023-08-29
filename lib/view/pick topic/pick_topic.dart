import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/pick%20topic/picTopic%20widgets/topic_container.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/model/category.dart';
import 'package:secoola_app/service/api.dart';

class PickTopic extends StatefulWidget {
  const PickTopic({super.key});

  @override
  State<PickTopic> createState() => _PickTopicState();
}

class _PickTopicState extends State<PickTopic> {
  late Future<List<Category>> futureCategory;

  @override
  void initState() {
    super.initState();
    futureCategory = ApiService.fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Pick your favorite topic',
                style: TextStyle(fontSize: 24.sp, color: Colors.black),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 294.w,
                height: 41.h,
                child: Text(
                  textAlign: TextAlign.center,
                  'Choose your favorite topic to help us deliver the most suitable course for you.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
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
                      width: 335.w,
                      height: 300.h,
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        mainAxisSpacing: 20.h,
                        crossAxisCount: 3,
                        children: categories.map((category) {
                          return TopicContainer(
                            imageLink: category.image,
                            topicName: category.name,
                          );
                        }).toList(),
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              CommonButton(
                buttonLabel: 'Start your journey',
                onPressed: () {
                  Get.to(const BottomNavManager());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 294.w,
                height: 41.h,
                child: Text(
                  'You can still change your topic again later',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xffA9AEB2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
