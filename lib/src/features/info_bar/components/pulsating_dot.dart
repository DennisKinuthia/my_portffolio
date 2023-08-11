import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';

class PulsatingDot extends StatefulWidget {
  const PulsatingDot({
    super.key,
  });

  @override
  State<PulsatingDot> createState() => _PulsatingDotState();
}

class _PulsatingDotState extends State<PulsatingDot>
    with SingleTickerProviderStateMixin {
  final double _dotSize = 15.0;

  final Color _containerColor = Colors.white;
  final Color _dotColor = AppColors.primary;
  final Duration _duration = const Duration(milliseconds: 1000);

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration)
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                width: _dotSize * 2,
                height: _dotSize * 2,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: 1.0 - _controller.value,
                child: Container(
                  width: _dotSize / 1.5 + (_controller.value * _dotSize),
                  height: _dotSize / 1.5 + (_controller.value * _dotSize),
                  decoration: BoxDecoration(
                    color: _containerColor,
                    shape: BoxShape.circle,
                  ),
                ),
              );
            },
          ),
          Container(
            width: _dotSize,
            height: _dotSize,
            decoration: BoxDecoration(
              color: _dotColor,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
