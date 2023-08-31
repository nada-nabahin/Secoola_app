import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/person_widget.dart';

class ListViewItem extends StatelessWidget {
  Color? containerColor;
  final String title;
  final String personName;
  String? imageLink;
  final String price;
  final String noteAboutPrice;
  Color? shadeColor;
  Color? noteColor;
  double containerWidth;
  double containerHeight;

  ListViewItem({
    super.key,
    this.containerColor,
    required this.title,
    required this.personName,
    required this.price,
    required this.noteAboutPrice,
    this.shadeColor,
    this.noteColor,
    required this.containerWidth,
    required this.containerHeight,
    this.imageLink,
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
            Stack(
              children: [
                // Image container
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: containerColor,
                    image: imageLink != null
                        ? DecorationImage(
                            image: NetworkImage(imageLink!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                ),
                // Star rating container
                Positioned(
                  left: 5.w, // Adjust the positioning as needed
                  top: 5.h, // Adjust the positioning as needed
                  child: Container(
                    width: 49.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                // Heart icon container
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 28.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.favorite_sharp,
                      color: Colors.red,
                      size: 16,
                    ),
                  ),
                ),
              ],
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
