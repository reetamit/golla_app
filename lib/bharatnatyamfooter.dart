import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BharatanatyamFooter extends StatelessWidget {
  const BharatanatyamFooter({super.key});

  @override
  Widget build(BuildContext context) {
    // Replicating the elegant gold color from your image
    const Color goldColor = Color(0xFFD4AF37);

    return Container(
      // Match the deep maroon/burgundy background color
      //color: const Color(0xFF4A000A),
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // --- TOP DIVIDER SECTION WITH LOTUS ---
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: goldColor,
                    thickness: 1.0,
                    endIndent: 8,
                  ),
                ),
                // Custom drawn geometric lotus shape matching the image
                customLotusVector(),
                const Expanded(
                  child: Divider(color: goldColor, thickness: 1.0, indent: 8),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // --- FIRST TEXT LINE ---
            Text(
              'PRESERVING TRADITION   •   INSPIRING EXCELLENCE',
              textAlign: TextAlign.center,
              style: GoogleFonts.cinzel(
                color: goldColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.8,
              ),
            ),
            const SizedBox(height: 6),

            // --- SECOND TEXT LINE ---
            Text(
              'CELEBRATING BHARATANATYAM',
              textAlign: TextAlign.center,
              style: GoogleFonts.cinzel(
                color: goldColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Pure Flutter custom geometric canvas path mimicking the traditional center lotus
  Widget customLotusVector() {
    return Image.asset(
      'assets/lotus_icon.png',
      width: 30,
      height: 30,
      fit: BoxFit.contain,
    );
  }
}
