import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secoola_app/view/search%20screens/searchResult_button.dart';
import 'package:secoola_app/view/widgets/gridView.dart';
import 'package:secoola_app/view/widgets/searchTextField.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SearchTextField(
                searchIcon: Icons.clear,
                searchText: 'UX Design',
                onPressed: () {
                  Get.back();
                },
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                textAlign: TextAlign.left,
                'Showing search result for “UX Design”',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffA9AEB2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SearchResultButton(
                      label: '   Filter', buttonIcon: Icons.filter),
                  SearchResultButton(
                      label: '   Sort', buttonIcon: Icons.sort_outlined),
                ],
              ),
              SizedBox(height: 20),
              GridWidget()
            ],
          ),
        ),
      ),
    );
  }
}
