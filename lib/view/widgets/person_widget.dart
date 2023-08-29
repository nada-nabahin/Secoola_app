import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  final String personName;
  final Color? iconColor;
  final double fontSize;
  const PersonWidget({
    Key? key,
    required this.personName,
    this.iconColor,
    this.fontSize = 12.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final color = iconColor ?? const Color(0xffA9AEB2);
    return Row(
      children: [
        Icon(
          Icons.person,
          size: 18,
          color: color,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
        ),
        Text(
          personName,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
