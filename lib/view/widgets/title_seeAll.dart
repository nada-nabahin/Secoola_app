import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Title_seeAll extends StatelessWidget {
  final String title;
  String textButton_word;

  Title_seeAll({super.key, required this.title, required this.textButton_word});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.h,
        right: 20.w,
        bottom: 15.h,
        left: 20.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              textButton_word,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xff00A9B7),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
