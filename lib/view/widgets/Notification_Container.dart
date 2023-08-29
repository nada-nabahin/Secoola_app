import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  String text1;
  String text2;
  IconData notificationIcon;
  NotificationContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.notificationIcon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 335,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                notificationIcon,
                size: 24,
                color: Color(0xff00A9B7),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffA9AEB2),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.more_horiz,
                color: Color(0xff00A9B7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
