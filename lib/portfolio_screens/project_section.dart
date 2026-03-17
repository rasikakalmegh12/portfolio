import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Projects",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              projectCard(
                  "Live Vehicle Tracking App",
                  "Real-time vehicle tracking using Google Maps and REST APIs."),
              projectCard(
                  "School Management System",
                  "Flutter + Firebase app for attendance and student performance."),
              projectCard(
                  "Marketing Executive App",
                  "Executive tracking, product showcase and real-time calculations."),
            ],
          )
        ],
      ),
    );
  }

  Widget projectCard(String title, String description) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(description),
        ],
      ),
    ).animate().fade().scale();
  }
}