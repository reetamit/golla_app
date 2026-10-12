import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bharatnatyamfooter.dart';

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
          // Layer 1: Solid base background color
          // Positioned.fill(child: Container(color: const Color(0xFF800040))),
          Positioned.fill(
            child: Container(color: const Color.fromARGB(255, 120, 2, 45)),
          ),
          // Layer 2: Seamless repeating silk fabric pattern filling the entire browser window
          // Positioned.fill(
          //   child: Image.asset(
          //     'assets/my_pattern.jpeg',
          //     repeat: ImageRepeat.repeat,
          //     opacity: const AlwaysStoppedAnimation(.5),
          //   ),
          // ),

          // Layer 3: The Interactive Scrolling Interface
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 20.0,
                  ),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 1024),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // --- CUSTOM INTEGRATED NAVIGATION BAR ---
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 12.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withAlpha(25),
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                // Replaced static const Icon with an interactive PopupMenuButton
                                child: PopupMenuButton<String>(
                                  icon: const Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  // 1. Sets the background color of the entire dropdown container window
                                  color: const Color(0xFF800040).withAlpha(200),
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                  // Dictates what happens when a menu item is tapped
                                  onSelected: (String value) {
                                    // Handle your navigation actions here!
                                    print('Selected: $value');
                                  },
                                  // Populates the items array structure dynamically
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry<String>>[
                                        PopupMenuItem<String>(
                                          value: 'Learn',
                                          child: Text(
                                            'Learn',
                                            style: GoogleFonts.cinzel(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2.0,
                                            ),
                                          ),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'Grow',
                                          child: Text(
                                            'Grow',
                                            style: GoogleFonts.cinzel(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2.0,
                                            ),
                                          ),
                                        ),
                                        PopupMenuItem<String>(
                                          value: 'Transform',
                                          child: Text(
                                            'Transform',
                                            style: GoogleFonts.cinzel(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                ),
                              ),
                              const SizedBox(width: 16),
                            ],
                          ),
                        ),

                        // --- CONTENT WINDOW STACK ---
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            // Bottom of Stack: Your main central background logo medallion image
                            Image.asset(
                              'assets/background.jpg',
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const SizedBox(height: 500),
                            ),

                            // Top of Stack: STOTRA INSTITUTE CUSTOM DISPLAY TYPOGRAPHY LAYOUT
                            Padding(
                              // 👈 CHANGED: Adds exactly 50px of buffer room on the left and right sides of your text
                              padding: const EdgeInsets.symmetric(
                                vertical: 40.0,
                                horizontal: 50.0,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, // Keeps all contents centered
                                children: [
                                  // 1. STOTRA (Main Title)
                                  Text(
                                    'STOTRA',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cinzel(
                                      color: goldColor,
                                      fontSize: 42,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2.0,
                                    ),
                                  ),

                                  // 2. INSTITUTE OF BHARATANATYAM
                                  Text(
                                    'INSTITUTE OF BHARATANATYAM',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cinzel(
                                      color: goldColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1.5,
                                    ),
                                  ),

                                  const SizedBox(height: 12),

                                  // 3. Mini Divider Row with Lotus/Star Center
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: goldColor,
                                          endIndent: 10,
                                          indent: 20,
                                          thickness: 1,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/lotus_icon.png',
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.contain,
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: goldColor,
                                          indent: 10,
                                          endIndent: 20,
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),

                                  //const SizedBox(height: 5),

                                  // 4. VIDYA AMRUTAM • KNOWLEDGE IS ETERNAL
                                  const Text(
                                    'VIDYA AMRUTAM  •  KNOWLEDGE IS ETERNAL',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: goldColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 2.5,
                                    ),
                                  ),

                                  //const SizedBox(height: 0),

                                  // 5. Where Tradition Meets Transformation (Italicized Headline)
                                  Text(
                                    'Where Tradition Meets\nTransformation',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cormorantGaramond(
                                      color: goldColor,
                                      fontSize: 38,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                  const SizedBox(height: 16),

                                  // 6. Lower Row Divider
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: goldColor,
                                          endIndent: 15,
                                          indent: 40,
                                          thickness: 1,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/lotus_icon.png',
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.contain,
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: goldColor,
                                          indent: 15,
                                          endIndent: 40,
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 28),

                                  // 7. Body Paragraph 1 (No nested padding needed since the parent layout handles it)
                                  Text(
                                    'Rooted in the sacred legacy of Bharatanatyam, Stotra Institute of Bharatanatyam is dedicated to nurturing the next generation of dancers through disciplined training, artistic excellence, and cultural awareness. Our students embark on a journey that extends beyond dance, cultivating confidence, devotion, grace, and lifelong learning.',
                                    textAlign: TextAlign.center,
                                    // style: TextStyle(
                                    //   color: Colors.white,
                                    //   fontSize: 16,
                                    //   height: 1.6,
                                    //   fontFamily: 'serif',
                                    // ),
                                    style: GoogleFonts.cormorantGaramond(
                                      color: Colors.white,
                                      fontSize: 16,
                                      height: 1.6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  // 8. Body Paragraph 2
                                  Text(
                                    'At Stotra, every movement tells a story, every rhythm carries tradition, and every performance celebrates the timeless beauty of India’s classical heritage.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cormorantGaramond(
                                      color: Colors.white,
                                      fontSize: 16,
                                      height: 1.6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 0),
                        const BharatanatyamFooter(),
                      ],
                    ),
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
