import 'package:flutter/cupertino.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Experience",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Flutter Developer - Indtrack Technology Pvt Ltd",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Feb 2024 - Dec 2025"),
          SizedBox(height: 10),
          Text(
              "Developed cross-platform apps, integrated REST APIs, Google Maps and deployed apps to Play Store and App Store."),
          SizedBox(height: 30),
          Text("Freelance Mobile App Developer",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Jan 2026 - Present"),
          SizedBox(height: 10),
          Text(
              "Developed a marketing field executive app with live tracking, product catalog and real-time calculations."),
        ],
      ),
    );
  }
}
