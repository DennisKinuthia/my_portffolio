import 'package:flutter/material.dart';

class RingPainter extends CustomPainter {
  const RingPainter({
    required this.progress,
    required this.notCompletedColor,
    required this.completedColor,
  });
  final double progress;
  final Color notCompletedColor;
  final Color completedColor;

  @override
  void paint(Canvas canvas, Size size) {
    final notCompleted = progress < 1.0;
    final strokeWidth = size.width / 15.0;
    final center = Offset(size.width / 2, size.height / 2);
    final radius =
        notCompleted ? (size.width - strokeWidth) / 2 : size.width / 2;
    final backgroundPaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth
      ..color = notCompletedColor
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center, radius, backgroundPaint);
  }

  @override
  bool shouldRepaint(covariant RingPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
