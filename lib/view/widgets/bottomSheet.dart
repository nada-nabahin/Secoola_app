import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/widgets/commonButton.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 760,
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 10),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.clear,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(23),
                      topRight: Radius.circular(23),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 65),
                      ContenerColoeOnbordingCustom(
                        color: Color(0xffFFEA7D),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      OnBoardingText(
                          firstText: 'Nothing here yet',
                          secondText:
                              'You haven\'t added anything to your cart ,\n start exploring your favorite courses!'),
                      SizedBox(
                        height: 75,
                      ),
                      CommonButton(
                        buttonLabel: 'Explore course',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
