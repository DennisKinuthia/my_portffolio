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
  double _xOffset = 0;
  bool _isDrawerOpen = false;
  double _sizeFactor = 1;
  IconData _drawerIcon = Icons.menu_rounded;

  void _openDrawer() {
    setState(() {
      _xOffset = -100;
      _isDrawerOpen = true;
      _sizeFactor = 1.5;
      _drawerIcon = Icons.close_rounded;
    });
  }

  void _closeDrawer() {
    setState(() {
      _xOffset = 0;
      _isDrawerOpen = true;
      _sizeFactor = 1;
      _drawerIcon = Icons.menu_rounded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      width: size.width * 0.05 * _sizeFactor,
      duration: const Duration(milliseconds: 250),
      transform: Matrix4.translationValues(_xOffset, 0.0, 0.0),
      color: AppColors.navBgcolor,
      margin: const EdgeInsets.only(left: Sizes.p32),
      child: Column(
        children: <Widget>[
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => _isDrawerOpen ? _closeDrawer() : _openDrawer(),
              child: Container(
                color: AppColors.bsCardColor,
                padding: const EdgeInsets.all(Sizes.p20),
                child: Icon(
                  _drawerIcon,
                  color: AppColors.textColor,
                  size: Sizes.p24,
                ),
              ),
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
