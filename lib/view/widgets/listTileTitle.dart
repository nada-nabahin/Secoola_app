import 'package:flutter/material.dart';
import 'package:secoola_app/view/widgets/CategoryTopicConatiner.dart';

class ListTileTitle extends StatelessWidget {
  String topicName;
  String topicIcon;
  ListTileTitle({
    super.key,
    required this.topicIcon,
    required this.topicName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CategoryTopicConatiner(
              topicIcon: topicIcon,
              topicName: topicName,
            )),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
        onTap: () {
          ///
        },
      ),
    );
  }
}
