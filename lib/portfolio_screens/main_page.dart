import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio_screens/project_section.dart';
import 'package:portfolio/portfolio_screens/skills_section.dart';

import 'about_section.dart';
import 'contact_section.dart';
import 'experience_section.dart';
import 'hero_section.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rasika Kalmegh"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Flutter Developer"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeroSection(),
            SizedBox(height: 40),
            AboutSection(),
            SizedBox(height: 40),
            SkillsSection(),
            SizedBox(height: 40),
            ExperienceSection(),
            SizedBox(height: 40),
            ProjectsSection(),
            SizedBox(height: 40),
            ContactSection(),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}