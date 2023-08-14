import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class SkillsLevels extends StatelessWidget {
  const SkillsLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SkillMeasure(skill: 'Flutter/Dart', percentLevel: 0.85),
          SkillMeasure(skill: 'Firebase', percentLevel: 0.75),
          SkillMeasure(skill: 'HTML/CSS', percentLevel: 0.90),
          SkillMeasure(skill: 'JavaScript', percentLevel: 0.85),
          SkillMeasure(skill: 'NodeJs', percentLevel: 0.80),
          SkillMeasure(skill: 'Python', percentLevel: 0.70),
        ],
      ),
    );
  }
}

class SkillMeasure extends StatelessWidget {
  const SkillMeasure(
      {super.key, required this.skill, required this.percentLevel});

  final String skill;
  final double percentLevel;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.p12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          gapH12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill,
                style: GoogleFonts.roboto(
                  fontSize: Sizes.p12,
                  color: AppColors.headlineColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${percentLevel * 100}%',
                style: GoogleFonts.roboto(
                  fontSize: Sizes.p12,
                  color: AppColors.headlineColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          gapH8,
          Stack(
            children: <Widget>[
              Container(
                width: size.width,
                height: 5.0,
                color: AppColors.bsCardColor,
              ),
              FractionallySizedBox(
                widthFactor: percentLevel,
                child: Container(
                  color: AppColors.primary,
                  height: 5.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
