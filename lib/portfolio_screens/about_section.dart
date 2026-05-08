import 'package:flutter/cupertino.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("About Me",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text(
              "Flutter Developer with 2+ years of experience designing, developing, and deploying scalable cross- platform mobile applications for Android and iOS. Proﬁcient in Flutter, Dart, RESTful API integration, Firebase, and state management (Bloc/Provider). Experienced in building real-time tracking systems, offline-ﬁrst applications, and responsive UI/UX. Strong ability to optimize performance, debug issues, and deliver high-quality applications in fast-paced environments. Available for immediate joining."),
        ],
      ),
    );
  }
}