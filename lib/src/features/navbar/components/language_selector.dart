import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/navbar/components/language_button.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p24),
      color: AppColors.bsCardColor,
      child: const Column(
        children: <Widget>[
          LanguageButton(
            lan: 'AR',
            isActive: false,
            onTap: null,
          ),
          gapH12,
          LanguageButton(
            lan: 'EN',
            isActive: true,
            onTap: null,
          )
        ],
      ),
    );
  }
}
