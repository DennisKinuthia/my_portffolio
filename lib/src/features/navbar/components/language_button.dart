import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
    required this.isActive,
    required this.onTap,
    required this.lan,
  });

  final bool isActive;
  final String lan;
  final VoidCallbackAction? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.mainBgColor,
        shape: BoxShape.circle,
      ),
      child: Text(
        lan,
        style: GoogleFonts.roboto(
          color: isActive ? AppColors.mainBgColor : AppColors.textColor,
          fontSize: 9.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
