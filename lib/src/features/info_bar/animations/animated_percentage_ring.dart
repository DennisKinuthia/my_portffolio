// ignore_for_file: library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:portfolio/src/features/info_bar/animations/animation_controller_state.dart';
import 'package:portfolio/src/features/info_bar/components/language_level.dart';

class AnimatedPercentageRing extends StatefulWidget {
  const AnimatedPercentageRing({
    super.key,
    required this.percentage,
    required this.language,
  });

  final double percentage;
  final String language;

  @override
  _AnimatedPercentageRingState createState() =>
      _AnimatedPercentageRingState(const Duration(milliseconds: 1000));
}

class _AnimatedPercentageRingState
    extends AnimationControllerState<AnimatedPercentageRing> {
  _AnimatedPercentageRingState(Duration duration) : super(duration);

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
        return LanguageLevelRing(
          percentage: widget.percentage,
          progress: _animation.value,
          language: widget.language,
        );
      },
    );
  }
}
