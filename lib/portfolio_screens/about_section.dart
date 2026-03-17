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
              "Flutter developer with 1.8+ years of experience building Android and iOS apps. Experienced in REST API integration, real-time tracking systems, and Google Maps implementations."),
        ],
      ),
    );
  }
}