import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/Registeration%20screens/Registeration%20widgets/backArrow_title.dart';
import 'package:secoola_app/view/widgets/Notification_Container.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(
          top: 20.h,
          left: 15.w,
          right: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackArrowAndTitle(title: 'Notification'),
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
    );
  }
}
