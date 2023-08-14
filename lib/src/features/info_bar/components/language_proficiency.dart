import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/components/language_level.dart';

class LanguageProficiency extends StatelessWidget {
  const LanguageProficiency({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LanguageLevelRing(percentage: 85.0, language: 'Swahili'),
          gapW4,
          LanguageLevelRing(percentage: 90.0, language: 'English'),
          gapW4,
          LanguageLevelRing(percentage: 75.0, language: 'Kikuyu'),
        ],
      ),
    );
  }
}
