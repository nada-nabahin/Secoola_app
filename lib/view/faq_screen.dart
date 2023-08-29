import 'package:accordion/accordion.dart';
import 'package:accordion/accordion_section.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

class AccordionPage extends StatelessWidget //__
{
  const AccordionPage({Key? key}) : super(key: key);

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

  @override
  build(context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Accordion'),
        ),
        body: Accordion(
          maxOpenSections: 2,
          headerBackgroundColorOpened: Colors.black54,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: true,
              leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
              headerBackgroundColor: Colors.black,
              headerBackgroundColorOpened: Colors.red,
              header: Text('How Learning Apps Differ From Other Mobile Apps?',
                  style: _headerStyle),
              content: Text(_loremIpsum, style: _contentStyle),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.contact_page, color: Colors.white),
              header: Text(
                  'What Is It That Learning Apps Do Differently From eLearning?',
                  style: _headerStyle),
              content: Wrap(
                children: List.generate(
                    30,
                    (index) => const Icon(Icons.contact_page,
                        size: 30, color: Color(0xff999999))),
              ),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.computer, color: Colors.white),
              header: Text(' Do We Need mLearning Or A Learning App?',
                  style: _headerStyle),
              content: const Icon(Icons.computer,
                  size: 200, color: Color(0xff999999)),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.movie, color: Colors.white),
              header: Text(
                  ' Why Should Learning And development Invest In An App As A Part Of Learning Strategy?',
                  style: _headerStyle),
              content:
                  const Icon(Icons.movie, size: 200, color: Color(0xff999999)),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.people, color: Colors.white),
              header: Text('What Is The Right Content For Learning Apps?',
                  style: _headerStyle),
              content:
                  const Icon(Icons.people, size: 200, color: Color(0xff999999)),
            ),
            AccordionSection(
              isOpen: false,
              leftIcon: const Icon(Icons.map, color: Colors.white),
              header: Text('What Is The Right Content For Learning Apps?',
                  style: _headerStyle),
              content:
                  const Icon(Icons.map, size: 200, color: Color(0xff999999)),
            ),
          ],
        ),
      );
} //__