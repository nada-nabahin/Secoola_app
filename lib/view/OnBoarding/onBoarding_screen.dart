import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/colorContainer.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoardingButtons.dart';
import 'package:secoola_app/view/OnBoarding/onBoarding%20widgets/onBoarding_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          SizedBox(
            height: 16.h,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotWidth: 105.w,
                dotHeight: 4.h,
                dotColor: Color.fromARGB(255, 165, 224, 230),
                activeDotColor: Color(0xff00A9B7),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Column(
                  children: [
                    Spacer(),
                    ContenerColoeOnbordingCustom(color: Color(0xffFCE2EA)),
                    SizedBox(
                      height: 100.h,
                    ),
                    OnBoardingText(
                      firstText: 'Join and study together',
                      secondText:
                          'Find your best experience while studying and seeking knowledge in here',
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 135.h,
                    ),
                    ContenerColoeOnbordingCustom(color: Color(0xffFFEA7D)),
                    SizedBox(
                      height: 100.h,
                    ),
                    OnBoardingText(
                      firstText: 'Find your mentors',
                      secondText:
                          'Find your best experience while studying and seeking knowledge in here',
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 135.h,
                    ),
                    ContenerColoeOnbordingCustom(
                        color: const Color(0xffFD0B2FF)),
                    SizedBox(
                      height: 100.h,
                    ),
                    OnBoardingText(
                      firstText: 'Explore new knowledge',
                      secondText:
                          'Find your best experience while studying and seeking knowledge in here',
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
          OnBoardingButtons(),
          SizedBox(
            height: 58.h,
          ),
        ],
      ),
    );
  }
}
