import 'package:flutter/material.dart';

class SupportCard extends StatelessWidget {
  const SupportCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.support_agent,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            "Feel Free to Ask, We Ready to Help",
            style: TextStyle(
              fontSize:20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
