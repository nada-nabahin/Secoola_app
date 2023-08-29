import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  String searchText;
  IconData searchIcon;
  final VoidCallback onPressed;

  SearchTextField(
      {Key? key,
      required this.searchIcon,
      required this.searchText,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: 335,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 24,
            ),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: searchText,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 15),
                ),
              ),
            ),
            GestureDetector(
              onTap: onPressed,
              child: Icon(
                searchIcon,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
