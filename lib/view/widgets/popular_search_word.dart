import 'package:flutter/material.dart';

class PopularSearchWord extends StatelessWidget {
  String searchWord;
  PopularSearchWord({super.key, required this.searchWord});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          searchWord,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
