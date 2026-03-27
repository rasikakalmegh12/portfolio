import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarSection extends StatelessWidget {
  const NavigationBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Rasika Kalmegh",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Row(
            children: [
              NavItem("About"),
              NavItem("Skills"),
              NavItem("Projects"),
              NavItem("Contact"),
            ],
          )
        ],
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final String title;
  const NavItem(this.title, {super.key});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
              color: hover ? Colors.tealAccent : Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
          child: Text(widget.title),
        ),
      ),
    );
  }
}