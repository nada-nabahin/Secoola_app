import 'package:flutter/material.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/account_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/home_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/myCourse_screen.dart';
import 'package:secoola_app/view/Bottom%20nav/NavBar_Screens/nav%20bar%20secreens%20widgets/wishlist_screen.dart';

class ScreenManager {
  static List<Widget> screens = [
    HomeScreen(),
    MyCourseScreen(),
    WishlistScreen(),
    AccountScreen(),
  ];
}
