import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/appBar_widgets/container_under_appbar.dart';
import 'package:secoola_app/view/widgets/gridView.dart';

import '../../../widgets/appBar_widgets/SearchTextButton.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xff00A9B7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Wishlist',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerUnderAppbar(
              containerHeight: 150.h,
              text: '',
            ),
            GridWidget(),
          ],
        ),
      ),
    );
  }
}
