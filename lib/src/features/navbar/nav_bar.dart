import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/navbar/components/language_selector.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.sectionLabel});

  final String sectionLabel;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navBgcolor,
      margin: const EdgeInsets.only(left: Sizes.p32),
      child: Column(
        children: <Widget>[
          Container(
            color: AppColors.bsCardColor,
            padding: const EdgeInsets.all(Sizes.p20),
            child: const Icon(
              Icons.menu_rounded,
              color: AppColors.textColor,
              size: Sizes.p32,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Sizes.p32),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  widget.sectionLabel,
                  style: GoogleFonts.roboto(
                    color: AppColors.textColor,
                    fontSize: Sizes.p12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const LanguageSelector()
        ],
      ),
    );
  }
}
