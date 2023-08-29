import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secoola_app/view/widgets/gridViewItem.dart';
import 'package:secoola_app/view/widgets/listView_item.dart';

class GridWidget extends StatelessWidget {
  GridWidget({super.key});

  final List<Map<String, dynamic>> itemList = [
    {
      'containerColor': Color.fromARGB(255, 255, 194, 125),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 125, 238, 255),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color(0xffFFEA7D),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 255, 131, 43),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 255, 205, 239),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 143, 206, 194),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 255, 194, 125),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 125, 238, 255),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color(0xffFFEA7D),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 255, 131, 43),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 255, 205, 239),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
    {
      'containerColor': Color.fromARGB(255, 143, 206, 194),
      'title': 'Swift Class - Adv...',
      'personName': 'Cameron Williamson',
      'price': '\$41',
      'noteAboutPrice': 'Label',
      'shadeColor': Color(0xffDCF3F5),
      'noteColor': Color(0xff00A9B7),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.w,
      ),
      itemBuilder: (context, index) {
        return GridViewItem(
          containerWidth: 158.w,
          containerColor: itemList[index]['containerColor'],
          title: itemList[index]['title'],
          personName: itemList[index]['personName'],
          price: itemList[index]['price'],
          noteAboutPrice: itemList[index]['noteAboutPrice'],
          shadeColor: itemList[index]['shadeColor'],
          noteColor: itemList[index]['noteColor'],
        );
      },
    );
  }
}
