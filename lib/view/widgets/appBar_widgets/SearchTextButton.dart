import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/search%20screens/search_screen.dart';

class SearchTextButton extends StatelessWidget {
  const SearchTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 48.h,
      child: TextButton(
        onPressed: () {
          Get.to(SearchScreen());
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.white),
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                const Icon(
                  Icons.search_outlined,
                  color: Colors.black,
                  size: 26,
                ),
                SizedBox(width: 8.w),
                const Text(
                  "Search for anything",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
