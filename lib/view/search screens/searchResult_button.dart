import 'package:flutter/material.dart';

class SearchResultButton extends StatelessWidget {
  String label;
  IconData buttonIcon;
  SearchResultButton(
      {super.key, required this.label, required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        side: BorderSide(color: Color(0xff00A9B7)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Row(
          children: [
            Icon(
              buttonIcon,
              color: Color(0xff00A9B7),
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff00A9B7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
