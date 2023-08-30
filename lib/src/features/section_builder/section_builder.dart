import 'package:flutter/material.dart';
import 'package:portfolio/src/features/navbar/nav_bar.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';

class SectionBuilder extends StatelessWidget {
  const SectionBuilder({super.key, required this.section});

  final Sections section;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sectionsPages[section]!,
          NavBar(section: section),
        ],
      ),
    );
  }
}
