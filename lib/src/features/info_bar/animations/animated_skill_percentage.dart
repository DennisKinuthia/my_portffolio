// ignore_for_file: no_logic_in_create_state, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:portfolio/src/features/info_bar/animations/animation_controller_state.dart';
import 'package:portfolio/src/features/info_bar/components/skill_level_and_label.dart';

class AnimatedSkillLevel extends StatefulWidget {
  const AnimatedSkillLevel({
    super.key,
    required this.skillName,
    required this.percentage,
  });

  final String skillName;
  final double percentage;

  @override
  _AnimatedSkillLevelState createState() =>
      _AnimatedSkillLevelState(const Duration(milliseconds: 1000));
}

class _AnimatedSkillLevelState
    extends AnimationControllerState<AnimatedSkillLevel> {
  _AnimatedSkillLevelState(Duration duration) : super(duration);

  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animation = Tween(begin: 0.0, end: widget.percentage / 100)
        .animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (BuildContext context, Widget? child) {
          return SkillLevelAndLabel(
            skillName: widget.skillName,
            percentage: widget.percentage,
            progress: _animation.value,
          );
        });
  }
}
