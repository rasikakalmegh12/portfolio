import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
//
// class SkillsSection extends StatelessWidget {
//   const SkillsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final skills = [
//       "Flutter",
//       "Dart",
//       "REST APIs",
//       "Firebase",
//       "Google Maps",
//       "Git",
//       "App Store Deployment",
//       "Cross Platform Development"
//     ];
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 80),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Tech Stack",
//               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 30),
//           Wrap(
//             spacing: 16,
//             runSpacing: 16,
//             children: skills
//                 .map((skill) => Container(
//               padding: const EdgeInsets.symmetric(
//                   horizontal: 20, vertical: 14),
//               decoration: BoxDecoration(
//                 color: Colors.white10,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(skill),
//             ).animate().fade().scale())
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
// }

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
      "Play Store Deployment",
      "Cross Platform Apps"
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Tech Stack",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: skills.map((skill) => HoverCard(skill)).toList(),
          )
        ],
      ),
    );
  }
}


class HoverCard extends StatefulWidget {
  final String title;
  const HoverCard(this.title, {super.key});

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: hover ? Colors.tealAccent.withOpacity(0.2) : Colors.white10,
        ),
        child: Text(widget.title,
            style: const TextStyle(fontWeight: FontWeight.w500)),
      ),
    );
  }
}