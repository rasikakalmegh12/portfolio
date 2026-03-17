import 'package:flutter/cupertino.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Contact",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text("Email: rasika.kalmegh07@gmail.com"),
          Text("Phone: +91 8698082098"),
          Text("Location: Nagpur, India"),
        ],
      ),
    );
  }
}
