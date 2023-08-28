import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';

class LanguageButton extends StatefulWidget {
  const LanguageButton({
    super.key,
    required this.onTap,
    required this.isActive,
    required this.lan,
  });

  final String lan;
  final Function()? onTap;
  final bool isActive;

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  Color _textColor = AppColors.textColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => {
        if (!widget.isActive)
          {
            setState(() {
              _textColor = AppColors.headlineColor;
            })
          }
      },
      onExit: (event) {
        if (!widget.isActive) {
          setState(() {
            _textColor = AppColors.textColor;
          });
        }
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.all(Sizes.p8),
          decoration: BoxDecoration(
            color: widget.isActive ? AppColors.primary : AppColors.mainBgColor,
            shape: BoxShape.circle,
          ),
          child: Text(
            widget.lan,
            style: GoogleFonts.roboto(
              color: widget.isActive ? AppColors.mainBgColor : _textColor,
              fontSize: 9.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
