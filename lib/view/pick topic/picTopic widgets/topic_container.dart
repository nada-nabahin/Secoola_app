import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicContainer extends StatefulWidget {
  final String imageLink;
  final String topicName;

  const TopicContainer({
    required this.imageLink,
    required this.topicName,
    Key? key,
  }) : super(key: key);

  @override
  _TopicContainerState createState() => _TopicContainerState();
}

class _TopicContainerState extends State<TopicContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  border: isSelected
                      ? Border.all(color: Color(0xff00A9B7), width: 2.w)
                      : null,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.network(
                      widget.imageLink,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              /*  if (isSelected)
                Positioned(
                  top: -10,
                  right: -10,
                  child: Container(
                    width: 24.w,
                    height: 24.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff00A9B7),
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 16),
                  ),
                ), */
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            widget.topicName,
            style: TextStyle(
              fontSize: 14.sp,
              color: isSelected ? Color(0xff00A9B7) : Color(0xffA9AEB2),
            ),
          ),
        ],
      ),
    );
  }
}
