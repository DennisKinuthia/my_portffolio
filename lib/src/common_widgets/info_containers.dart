import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class InformationContainer extends StatelessWidget {
  const InformationContainer({
    super.key,
    required this.child,
    this.showBottomMargin = true,
  });

  final Widget child;
  final bool showBottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.p20),
      padding:
          const EdgeInsets.symmetric(horizontal: Sizes.p8, vertical: Sizes.p16),
      decoration: BoxDecoration(
        border: showBottomMargin
            ? Border(
                bottom: BorderSide(
                  color: AppColors.textColor.withOpacity(.3),
                  width: 1.0,
                ),
              )
            : null,
      ),
      child: child,
    );
  }
}
