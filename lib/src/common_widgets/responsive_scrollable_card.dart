import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/responsive_center.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/constants/breakpoints.dart';

class ResponsiveScrollableCard extends StatelessWidget {
  const ResponsiveScrollableCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveCenter(
        maxContentWidth: Breakpoint.tablet,
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.p16),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
