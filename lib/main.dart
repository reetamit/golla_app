import 'package:flutter/material.dart';
import 'content_window_stack.dart';
import 'theme/app_background.dart';
import 'bharatnatyamfooter.dart';
import 'custom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Stotra Institute',
      //home: const MyHomePage(title: 'Stotra Institute'),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Gold color variable matching the image text accents
  static const Color goldColor = Color(0xFFE4C477);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppBackground(),

          // Layer 3: The Interactive Scrolling Interface
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 2400),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CustomNavigationBar(),
                      const ContentWindowStack(goldColor: goldColor),
                      const SizedBox(height: 0),
                      const BharatanatyamFooter(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Positioned.fill(child: const BharatanatyamFooter()),
        ],
      ),
    );
  }
}
