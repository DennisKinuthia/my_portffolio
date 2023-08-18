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
            percentage: 95,
            language: 'Swahili',
            completed: false,
          ),
          gapW4,
          AnimatedPercentageRing(
            percentage: 90,
            language: 'English',
            completed: false,
          ),
          gapW4,
          AnimatedPercentageRing(
            percentage: 85,
            language: 'Kikuyu',
            completed: false,
          ),
        ],
      ),
    );
  }
}
