import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


// class ProjectsSection extends StatelessWidget {
//   const ProjectsSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 80),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Projects",
//               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 30),
//           Wrap(
//             spacing: 30,
//             runSpacing: 30,
//             children: [
//               projectCard(
//                   "Live Vehicle Tracking App",
//                   "Real-time vehicle tracking using Google Maps and REST APIs."),
//               projectCard(
//                   "School Management System",
//                   "Flutter + Firebase app for attendance and student performance."),
//               projectCard(
//                   "Marketing Executive App",
//                   "Executive tracking, product showcase and real-time calculations."),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget projectCard(String title, String description) {
//     return Container(
//       width: 320,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: Colors.white10,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(title,
//               style:
//               const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 10),
//           Text(description),
//         ],
//       ),
//     ).animate().fade().scale();
//   }
// }

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Projects",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          ProjectCard(
              "Live Vehicle Tracking App",
              "Real-time vehicle tracking using Google Maps and REST APIs."),
          SizedBox(height: 20),
          ProjectCard(
              "School Management System",
              "Flutter + Firebase app for attendance and performance."),
          SizedBox(height: 20),
          ProjectCard(
              "Marketing Executive App",
              "Executive tracking, product showcase and calculations."),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;

  const ProjectCard(this.title, this.description, {super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white10,
          boxShadow: hover
              ? [
            BoxShadow(
                color: Colors.tealAccent.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2)
          ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,
                style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(widget.description),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("GitHub")),
                const SizedBox(width: 10),
                OutlinedButton(onPressed: () {}, child: const Text("Demo")),
              ],
            )
          ],
        ),
      ),
    ).animate().fade().scale();
  }
}

