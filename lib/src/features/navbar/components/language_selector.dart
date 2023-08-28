import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/navbar/components/language_button.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({
    super.key,
  });

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  bool _isEnActive = true;
  bool _isArActive = false;

  void _toggleLanguages() {
    if (_isEnActive && !_isArActive) {
      setState(() {
        _isEnActive = false;
        _isArActive = true;
      });
    } else {
      setState(() {
        _isEnActive = true;
        _isArActive = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.bsCardColor,
      child: Column(
        children: <Widget>[
          gapH20,
          LanguageButton(
            lan: 'AR',
            isActive: _isArActive,
            onTap: () => _toggleLanguages(),
          ),
          gapH20,
          LanguageButton(
            lan: 'EN',
            isActive: _isEnActive,
            onTap: () => _toggleLanguages(),
          ),
          gapH20,
        ],
      ),
    );
  }
}
