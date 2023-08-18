import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';

class SkillLevelPainter extends StatelessWidget {
  const SkillLevelPainter({
    super.key,
    required this.progress,
  });

  final double progress;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BarPainer(
        bgColor: AppColors.bsCardColor,
        foregroundColor: AppColors.primary,
        progress: progress,
      ),
    );
  }
}

class BarPainer extends CustomPainter {
  const BarPainer({
    required this.bgColor,
    required this.foregroundColor,
    required this.progress,
  });
  final Color bgColor;
  final Color foregroundColor;
  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    final bgRect = Rect.fromLTWH(0.0, 0.0, size.width, 5.0);
    final backgroundPaint = Paint()
      ..isAntiAlias = true
      ..color = bgColor
      ..style = PaintingStyle.fill;
    canvas.drawRect(bgRect, backgroundPaint);

    final double rectWidth = size.width * progress;
    final Rect foreRect = Rect.fromLTWH(0.0, 0.0, rectWidth, 5.0);
    final foregroundPaint = Paint()
      ..isAntiAlias = true
      ..color = foregroundColor
      ..style = PaintingStyle.fill;
    canvas.drawRect(foreRect, foregroundPaint);
  }

  @override
  bool shouldRepaint(covariant BarPainer oldDelegate) => true;
}
