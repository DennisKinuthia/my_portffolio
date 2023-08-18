import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class RingPainter extends CustomPainter {
  const RingPainter({
    required this.progress,
    required this.notCompletedColor,
    required this.completedColor,
    required this.percentage,
  });
  final double progress;
  final Color notCompletedColor;
  final Color completedColor;
  final double percentage;

  @override
  void paint(Canvas canvas, Size size) {
    final notCompleted = progress < (percentage / 100);
    final strokeWidth = size.width / Sizes.p16;
    final center = Offset(size.width / 2, size.height / 2);
    final radius =
        notCompleted ? (size.width - strokeWidth) / 2 : size.width / 2;

    if (notCompleted) {
      final backgroundPaint = Paint()
        ..isAntiAlias = true
        ..strokeWidth = strokeWidth
        ..color = notCompletedColor
        ..style = PaintingStyle.stroke;
      canvas.drawCircle(center, radius, backgroundPaint);
    }

    final foregroundPaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth
      ..color = completedColor
      ..style = PaintingStyle.stroke;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      2 * pi * progress,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant RingPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
