import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTopicConatiner extends StatelessWidget {
  String topicIcon;
  String topicName;
  CategoryTopicConatiner(
      {super.key, required this.topicIcon, required this.topicName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        color: Colors.white,
        height: 40,
        child: Row(
          children: [
            Image.network(
              topicIcon,
              width: 40.w,
              height: 40.h,
            ),
            const SizedBox(width: 5),
            Text(
              topicName,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
