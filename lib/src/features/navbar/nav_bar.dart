import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/navbar/components/language_selector.dart';
import 'package:portfolio/src/features/navbar/components/menu_items.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.sectionLabel});

  final String sectionLabel;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isDrawerOpen = false;
  double _sizeFactor = 1;
  IconData _drawerIcon = Icons.menu_rounded;
  Color _iconColor = AppColors.textColor;

  void _openDrawer() {
    setState(() {
      _isDrawerOpen = true;
      _sizeFactor = 3.5;
      _drawerIcon = Icons.close_rounded;
    });
  }

  void _closeDrawer() {
    setState(() {
      _isDrawerOpen = false;
      _sizeFactor = 1;
      _drawerIcon = Icons.menu_rounded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      width: size.width * 0.05 * _sizeFactor,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      color: AppColors.navBgcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            color: AppColors.bsCardColor,
            padding: const EdgeInsets.all(Sizes.p20),
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (event) {
                setState(() {
                  _iconColor = AppColors.headlineColor;
                });
              },
              onExit: (event) {
                setState(() {
                  _iconColor = AppColors.textColor;
                });
              },
              child: GestureDetector(
                onTap: () => _isDrawerOpen ? _closeDrawer() : _openDrawer(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      _drawerIcon,
                      color: _iconColor,
                      size: Sizes.p24,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Sizes.p24),
              child: _isDrawerOpen
                  ? MenuItems(
                      menuOptions: Sections.values,
                      activeMenuItem: widget.sectionLabel,
                    )
                  : RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        widget.sectionLabel.toUpperCase(),
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
