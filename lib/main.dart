import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/courseCompleted_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/account_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/myCourse_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/wishlist_screen.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding_screen.dart';
import 'package:secoola_app/view/paymentSucess_screen.dart';
import 'package:secoola_app/view/payment_screen.dart';
import 'package:secoola_app/view/search%20screens/search_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/bottom_nav.dart';
import 'package:secoola_app/view/widgets/searchTextField.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(390, 844),
        builder: (context, child) {
          return const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnBoarding(),
          );
        });
  }
}
