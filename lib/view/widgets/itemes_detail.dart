import 'package:flutter/material.dart';

class ItemsDetail extends StatelessWidget {
  String title;
  String personName;
  Color? shadeColor;
  Color? noteColor;
  Color? containerColor;
  final String noteAboutCourse;
  String price;
  ItemsDetail(
      {super.key,
      required this.title,
      required this.personName,
      this.shadeColor,
      this.noteColor,
      required this.noteAboutCourse,
      this.containerColor,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: 335,
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 68,
                width: 68,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //title under the container
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  //person name & icon
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 18,
                        color: Color(0xffA9AEB2),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                      ),
                      Text(
                        personName,
                        style: const TextStyle(
                          color: Color(0xffA9AEB2),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 21,
                        child: (Text(
                          price,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff00A9B7),
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            noteAboutCourse,
                            style: TextStyle(
                              color: noteColor,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
