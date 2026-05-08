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

          Text("Freelance Flutter Developer (Current)",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("• Built a CRM mobile application with end-to-end workflow management."),
          Text("• Implemented real-time tracking and attendance features."),
          Text("• Designed offline-first architecture with reliable data synchronisation."),
          Text("• Optimised performance using Bloc/Provider and efficient API handling."),
          Text("• Developed lead management and reporting modules."),
          SizedBox(height: 30),
          Text("Flutter Developer",
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Indtrack Technology Pvt Ltd | Feb 2024 – Dec 2025"),
          SizedBox(height: 8),
          Text("• Developed and maintained cross-platform apps using Flutter (Android & iOS)."),
          Text("• Built responsive UI components following modern UI/UX standards."),
          Text("• Integrated RESTful APIs and Firebase for real-time data synchronisation."),
          Text("• Implemented Google Maps and location services for live tracking features."),
          Text("• Deployed apps to Play Store/App Store; ensured compliance and release quality."),
          Text("• Collaborated with stakeholders; gathered requirements and delivered on time."),
          Text("• Delivered 3+ projects concurrently with performance optimisations."),

        ],
      ),
    );
  }
}
