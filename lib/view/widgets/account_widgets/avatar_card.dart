import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  const AvatarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/avatar.png",
          width: 80,
          height: 80,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Uranus Code",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Youtube Channel",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade600,
              ),
            )
          ],
        )
      ],
    );
  }
}
