import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/components/skill_level_painter.dart';

class SkillLevelAndLabel extends StatelessWidget {
  const SkillLevelAndLabel({
    super.key,
    required this.skillName,
    required this.percentage,
    required this.progress,
  });

  final String skillName;
  final double percentage;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                skillName,
                style: GoogleFonts.roboto(
                  fontSize: Sizes.p12,
                  color: AppColors.headlineColor,
                ),
              ),
              Text(
                '$percentage%',
                style: GoogleFonts.roboto(
                  fontSize: Sizes.p12,
                  color: AppColors.headlineColor,
                ),
              ),
            ],
          ),
          gapH8,
          SkillLevelPainter(
            progress: progress,
          ),
        ],
      ),
    );
  }
}
