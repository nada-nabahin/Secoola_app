import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:secoola_app/view/faq_screen.dart';
import 'package:secoola_app/view/notification_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffFFEA7D),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raymond Skyberg",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "raymond@mail.com",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SettingsGroup(
              title: "Account",
              settings: [
                SettingsItem(
                    onPressed: () {
                      Get.to(NotificationScreen());
                    },
                    icon: Icons.notifications,
                    title: "Notification",
                    hasArrow: true),
                SettingsItem(
                    onPressed: () {},
                    icon: Icons.security,
                    title: "Security",
                    hasArrow: true),
                SettingsItem(
                    onPressed: () {},
                    icon: Icons.email,
                    title: "Email Preference",
                    hasArrow: true),
              ],
            ),
            SettingsGroup(
              title: "Course",
              settings: [
                SettingsItem(
                    onPressed: () {},
                    icon: Icons.school,
                    title: "Certificate",
                    hasArrow: true),
                SettingsItem(
                    onPressed: () {},
                    icon: Icons.payment,
                    title: "Payment",
                    hasArrow: true),
                SettingsItem(
                    onPressed: () {},
                    icon: Icons.history,
                    title: "History",
                    hasArrow: true),
              ],
            ),
            SettingsGroup(
              title: "Support",
              settings: [
                SettingsItem(
                    onPressed: () {},
                    icon: Icons.help,
                    title: "Help",
                    hasArrow: true),
                SettingsItem(
                    onPressed: () {
                      Get.to(AccordionPage());
                    },
                    icon: Icons.question_answer,
                    title: "FAQ",
                    hasArrow: true),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  child: const Text("Sign Out", style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool hasArrow;
  final VoidCallback onPressed;

  SettingsItem(
      {required this.icon,
      required this.title,
      this.hasArrow = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: hasArrow
          ? GestureDetector(
              onTap: onPressed,
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            )
          : null,
      onTap: () {},
    );
  }
}

class SettingsGroup extends StatelessWidget {
  final String title;
  final List<SettingsItem> settings;

  SettingsGroup({required this.title, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 0, 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: settings,
        ),
      ],
    );
  }
}
