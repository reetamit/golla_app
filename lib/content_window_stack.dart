import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_strings.dart';

class ContentWindowStack extends StatelessWidget {
  final Color goldColor;

  const ContentWindowStack({super.key, required this.goldColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                CrossAxisAlignment.center, // Keeps all contents centered
            children: [
              // 1. STOTRA (Main Title)
              Text(
                AppStrings.mainTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.cinzel(
                  color: goldColor,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 24),
              // 2. INSTITUTE OF BHARATANATYAM
              Text(
                AppStrings.institutionSubtitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.cinzel(
                  color: goldColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5,
                ),
              ),

              const SizedBox(height: 40),

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
              const SizedBox(height: 24),
              // 4. VIDYA AMRUTAM • KNOWLEDGE IS ETERNAL
              Text(
                AppStrings.motoDividerText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: goldColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2.5,
                ),
              ),
              const SizedBox(height: 24),
              // 5. Where Tradition Meets Transformation (Italicized Headline)
              Text(
                AppStrings.italicTagline,
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantGaramond(
                  color: goldColor,
                  fontSize: 38,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 24),

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

              const SizedBox(height: 80),

              // 7. Body Paragraph 1
              Text(
                AppStrings.bodyParagraph1,
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantGaramond(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.6,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),

              // 8. Body Paragraph 2
              Text(
                AppStrings.bodyParagraph2,
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantGaramond(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.6,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
