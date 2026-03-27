import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

// class HeroSection extends StatelessWidget {
//   const HeroSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 600,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color(0xff0f2027),
//             Color(0xff203a43),
//             Color(0xff2c5364),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 80),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             /// LEFT TEXT CONTENT
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//
//                 Text(
//                   "Hi, I'm",
//                   style: GoogleFonts.poppins(
//                     fontSize: 24,
//                     color: Colors.white70,
//                   ),
//                 ).animate().fade().slideX(),
//
//                 const SizedBox(height: 10),
//
//                 Text(
//                   "Rasika Kalmegh",
//                   style: GoogleFonts.poppins(
//                     fontSize: 48,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ).animate().fade(delay: 200.ms).slideY(),
//
//                 const SizedBox(height: 10),
//
//                 Text(
//                   "Flutter Mobile App Developer",
//                   style: GoogleFonts.poppins(
//                     fontSize: 22,
//                     color: Colors.tealAccent,
//                   ),
//                 ).animate().fade(delay: 400.ms).slideX(),
//
//                 const SizedBox(height: 20),
//
//                 SizedBox(
//                   width: 450,
//                   child: Text(
//                     "I build scalable mobile applications with Flutter, REST APIs, Firebase and Google Maps. Passionate about building high performance apps with smooth user experiences.",
//                     style: GoogleFonts.poppins(
//                       fontSize: 16,
//                       color: Colors.white70,
//                     ),
//                   ),
//                 ).animate().fade(delay: 600.ms),
//
//                 const SizedBox(height: 30),
//
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.tealAccent,
//                         foregroundColor: Colors.black,
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 24, vertical: 16),
//                       ),
//                       child: const Text("View Projects"),
//                     ),
//
//                     const SizedBox(width: 20),
//
//                     OutlinedButton(
//                       onPressed: () {},
//                       style: OutlinedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 24, vertical: 16),
//                         side: const BorderSide(color: Colors.white),
//                       ),
//                       child: const Text(
//                         "Download Resume",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     )
//                   ],
//                 ).animate().fade(delay: 800.ms),
//               ],
//             ),
//
//             /// RIGHT SIDE ILLUSTRATION
//             Container(
//               height: 350,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: Colors.white10,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Icon(
//                 Icons.phone_android,
//                 size: 150,
//                 color: Colors.tealAccent,
//               ),
//             ).animate().scale(delay: 500.ms),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff020617), Color(0xff0f172a)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text("Hi, I'm",
              style: TextStyle(fontSize: 22, color: Colors.white70))
              .animate()
              .fade()
              .slideX(),
          const SizedBox(height: 10),
          const Text("Rasika Kalmegh",
              style: TextStyle(
                  fontSize: 54, fontWeight: FontWeight.bold))
              .animate()
              .fade(delay: 200.ms)
              .slideY(),
          const SizedBox(height: 10),
          const Text("Flutter Mobile App Developer",
              style:
              TextStyle(fontSize: 24, color: Colors.tealAccent))
              .animate()
              .fade(delay: 400.ms)
              .slideX(),
          const SizedBox(height: 20),
          const SizedBox(
            width: 450,
            child: Text(
                "I build scalable mobile applications with Flutter, REST APIs, Firebase and Google Maps. Passionate about building high performance apps with smooth user experiences.",
                style: TextStyle(color: Colors.white70)),
          ).animate().fade(delay: 600.ms),
          const SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.tealAccent,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                      ),
                      child: const Text("View Projects"),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Download Resume"),
                    )
                  ],
                ).animate().fade(delay: 800.ms)
              ],
              ),
                Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white10,
                  ),
                  child: const Icon(Icons.phone_android,
                      size: 150, color: Colors.tealAccent),
                ).animate().scale(delay: 500.ms)
              ],
          ),
        ),
    );
  }
}