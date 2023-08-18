import 'package:flutter/material.dart';

abstract class AnimationControllerState<T extends StatefulWidget>
    extends State<T> with SingleTickerProviderStateMixin {
  AnimationControllerState(this.animationDuration, this.upperBound);
  final double upperBound;
  final Duration animationDuration;
  late final animationController = AnimationController(
      vsync: this,
      duration: animationDuration,
      lowerBound: 0.0,
      upperBound: upperBound)
    ..forward();

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
