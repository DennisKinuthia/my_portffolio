import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/features/navbar/nav_bar.dart';
import 'package:portfolio/src/features/section_builder/section_state.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';
import 'package:portfolio/src/features/section_builder/sections_controller.dart';

class SectionBuilder extends ConsumerStatefulWidget {
  const SectionBuilder({super.key, required this.section});

  final Sections section;

  @override
  ConsumerState<SectionBuilder> createState() => _SectionBuilderState();
}

class _SectionBuilderState extends ConsumerState<SectionBuilder> {
  @override
  Widget build(BuildContext context) {
    final activeSection = ref.watch(sectionControllerProvider(widget.section));
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sectionsPages[activeSection.section.name]!,
          NavBar(section: activeSection.section),
        ],
      ),
    );
  }
}
