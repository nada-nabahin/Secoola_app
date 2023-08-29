import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';

class ListViewItem extends StatelessWidget {
  Color? containerColor;
  final String title;
  final String personName;
  final String price;
  final String noteAboutPrice;
  Color? shadeColor;
  Color? noteColor;
  double containerWidth;
  double containerHeight;

  ListViewItem({
    super.key,
    required this.containerColor,
    required this.title,
    required this.personName,
    required this.price,
    required this.noteAboutPrice,
    this.shadeColor,
    this.noteColor,
    required this.containerWidth,
    required this.containerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Container(
        height: 224.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //color container
            Container(
              width: containerWidth,
              height: containerHeight,
              padding: EdgeInsets.only(
                top: 10.h,
                left: 10.w,
                right: 10.w,
              ),
              decoration: BoxDecoration(
                //container color
                color: containerColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 49.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_sharp,
                            color: Colors.amber[300],
                            size: 12,
                          ),
                          SizedBox(width: 3.w),
                          Text(
                            '4.8',
                            style: TextStyle(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 28.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10.h,
            ),
            //texts
            Padding(
              padding: EdgeInsets.only(
                left: 7.w,
              ),
              child: Column(
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
                    height: 5.h,
                  ),
                  PersonWidget(
                    personName: personName,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          color: Color(0xff00A9B7),
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              noteAboutPrice,
                              style: TextStyle(
                                color: noteColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
