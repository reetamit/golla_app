import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Layer 1: Solid base background color
        Positioned.fill(
          child: Container(color: const Color.fromARGB(255, 120, 2, 45)),
        ),

        // Layer 2: Seamless repeating silk fabric pattern
        // Positioned.fill(
        //   child: Image.asset(
        //     'assets/my_pattern.jpeg',
        //     repeat: ImageRepeat.repeat,
        //     opacity: const AlwaysStoppedAnimation(0.5),
        //   ),
        // ),
      ],
    );
  }
}
