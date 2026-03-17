import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Flutter",
      "Dart",
      "REST APIs",
      "Firebase",
      "Google Maps",
      "Git",
      "App Store Deployment",
      "Cross Platform Development"
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Tech Stack",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: skills
                .map((skill) => Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(skill),
            ).animate().fade().scale())
                .toList(),
          )
        ],
      ),
    );
  }
}
