import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/components/ring_painter.dart';

class LanguageLevelRing extends StatelessWidget {
  const LanguageLevelRing({
    super.key,
    required this.percentage,
    required this.language,
    required this.progress,
  });
  final double percentage;
  final String language;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        gapH12,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
          child: Stack(
            children: [
              SizedBox(
                width: 54.0,
                height: 54.0,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: CustomPaint(
                    painter: RingPainter(
                      percentage: percentage,
                      progress: progress,
                      notCompletedColor: AppColors.cardsBgColor,
                      completedColor: AppColors.primary,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: Text(
                    '$percentage%',
                    style: GoogleFonts.roboto(
                      fontSize: Sizes.p12,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        gapH12,
        Center(
          child: Text(
            language,
            style: GoogleFonts.roboto(
              color: AppColors.headlineColor,
              fontSize: Sizes.p12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        gapH12,
      ],
    );
  }
}
