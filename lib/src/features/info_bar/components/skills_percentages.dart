import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/features/info_bar/animations/animated_skill_percentage.dart';

class SkillsLevels extends StatelessWidget {
  const SkillsLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AnimatedSkillLevel(skillName: 'Flutter/Dart', percentage: 85),
          AnimatedSkillLevel(skillName: 'Firebase', percentage: 75),
          AnimatedSkillLevel(skillName: 'HTML/CSS', percentage: 90),
          AnimatedSkillLevel(skillName: 'JavaScript', percentage: 85),
          AnimatedSkillLevel(skillName: 'NodeJs', percentage: 80),
          AnimatedSkillLevel(skillName: 'Python', percentage: 70),
        ],
      ),
    );
  }
}
