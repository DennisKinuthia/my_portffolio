import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/animations/animated_percentage_ring.dart';

class LanguageProficiency extends StatelessWidget {
  const LanguageProficiency({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AnimatedPercentageRing(
            percentage: 80,
            language: 'Swahili',
          ),
          gapW4,
          AnimatedPercentageRing(
            percentage: 85,
            language: 'English',
          ),
          gapW4,
          AnimatedPercentageRing(
            percentage: 75,
            language: 'Kikuyu',
          ),
        ],
      ),
    );
  }
}
