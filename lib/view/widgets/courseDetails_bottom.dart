import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/wishlist_screen.dart';
import 'package:secoola_app/view/paymentSucess_screen.dart';
import 'package:secoola_app/view/payment_screen.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';

class CourseDetailsBottomContainer extends StatelessWidget {
  const CourseDetailsBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 5, // Spread radius of the shadow
            blurRadius: 7, // Blur radius of the shadow
            offset: Offset(0, 8), // Offset of the shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 10.w,
          top: 20.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Price',
                  style: TextStyle(fontSize: 16.sp),
                ),
                Text(
                  '\$150',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Color(0xff00A9B7),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CommonButton(
              buttonLabel: 'Enroll course now',
              onPressed: () {
                Get.to(PaymentSucess());
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(PaymentScreen());
                    },
                    child: CourseDetailsButton(label: 'Add to cart')),
                SizedBox(
                  width: 20.w,
                ),
                GestureDetector(
                    onTap: () {
                      Get.to(WishlistScreen());
                    },
                    child: CourseDetailsButton(label: 'Add to wishlist')),
              ],
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}

class CourseDetailsButton extends StatelessWidget {
  String label;

  CourseDetailsButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          side: BorderSide(color: Color(0xff00A9B7)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 15.h,
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff00A9B7),
            ),
          ),
        ),
      ),
    );
  }
}
