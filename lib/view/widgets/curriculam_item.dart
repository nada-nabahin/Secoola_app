import 'package:flutter/material.dart';

class CurriculumItem extends StatelessWidget {
  String title;
  String duration;
  CurriculumItem({super.key, required this.duration, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.10),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(4, 3),
          ),
        ],
      ),
      child: ListTile(
        trailing: const Icon(
          Icons.play_circle_outline,
          color: Color(0xff00A9B7),
        ),
        title: Text(title),
        subtitle: Text(
          duration,
          style: TextStyle(color: Colors.grey.withOpacity(0.6)),
        ),
      ),
    );
  }
}
