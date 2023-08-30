import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/features/navbar/nav_bar.dart';
import 'package:portfolio/src/features/section_builder/section_state.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';
import 'package:portfolio/src/features/section_builder/sections_controller.dart';

class SectionBuilder extends ConsumerWidget {
  const SectionBuilder({super.key, required this.section});

  final Sections section;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sectionState = ref.watch(sectionControllerProvider(section));
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          sectionsPages[sectionState.section.name]!,
          NavBar(section: sectionState.section),
        ],
      ),
    );
  }
}
