import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/features/info_bar/components/language_level.dart';

class LanguageProficiency extends StatelessWidget {
  const LanguageProficiency({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: Wrap(
        spacing: 10.0,
        children: <Widget>[
          LanguageLevelRing(
            percentage: 95,
            language: 'English',
          ),
          LanguageLevelRing(
            percentage: 90,
            language: 'Swahili',
          ),
          LanguageLevelRing(
            percentage: 85,
            language: 'Kikuyu',
          ),
        ],
      ),
    );
  }
}
