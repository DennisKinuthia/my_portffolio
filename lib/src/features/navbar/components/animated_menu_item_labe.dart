import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/constants/app_colors.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/section_builder/section_state.dart';

class MenuItemLabel extends StatefulWidget {
  const MenuItemLabel({
    super.key,
    required this.section,
    required this.isActive,
    required this.onTap,
  });

  final Sections section;
  final bool isActive;
  final Function()? onTap;

  @override
  State<MenuItemLabel> createState() => _MenuItemLabelState();
}

class _MenuItemLabelState extends State<MenuItemLabel>
    with SingleTickerProviderStateMixin {
  Color _textColor = AppColors.textColor;
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..forward();

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCubic));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _textColor = AppColors.headlineColor;
        });
      },
      onExit: (event) {
        setState(() {
          _textColor = AppColors.textColor;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: SlideTransition(
          position: _offsetAnimation,
          child: Text(
            widget.section.name.toUpperCase(),
            style: GoogleFonts.roboto(
              color: widget.isActive ? AppColors.headlineColor : _textColor,
              fontSize: Sizes.p12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
