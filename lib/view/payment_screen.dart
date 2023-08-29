import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/bottomContainer.dart';
import 'package:secoola_app/view/widgets/itemes_detail.dart';
import 'package:secoola_app/view/widgets/title_seeAll.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              textAlign: TextAlign.start,
              'Items detail',
              style: TextStyle(
                fontSize: 18.sp,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          ItemsDetail(
            containerColor: Color(0xff86F2CB),
            title: 'Design THinking Fundamentals',
            personName: 'Dianne Russell',
            noteAboutCourse: 'Label',
            price: '\$75',
            noteColor: Color(0xff00A9B7),
            shadeColor: Color(0xffDCF3F5),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            child: Title_seeAll(
              title: 'Payment',
              textButton_word: 'Change',
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
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
                      'Master Card',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '**** **** **** 8271',
                      style: TextStyle(
                        color: Color(0xffA9AEB2),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          const BottomContainer(),
        ],
      ),
    );
  }
}
