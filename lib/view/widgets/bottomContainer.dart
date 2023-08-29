import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/paymentSucess_screen.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Voucher',
                  style: TextStyle(fontSize: 12),
                ),
                Container(
                  height: 30.h,
                  decoration: BoxDecoration(
                    color: Color(0XFFDCF3F5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        'VEKTORABELAJAR  :',
                        style: TextStyle(
                          color: Color(0xff00A9B7),
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      Text(
                        '\$520',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Color(0xff00A9B7),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(PaymentSucess());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00A9B7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Checkout',
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
