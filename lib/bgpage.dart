import 'package:flutter/material.dart';

class BackgroundImagePage extends StatelessWidget {
  const BackgroundImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ensure the Scaffold background is transparent so the Container image shows through
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            // Use AssetImage for local files, or NetworkImage for web URLs
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover, // Makes the image cover the whole web screen
          ),
        ),
        child: const Center(
          child: Text(
            'Your Web Content Goes Here',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
