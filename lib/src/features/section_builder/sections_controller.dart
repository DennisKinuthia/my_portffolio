import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/features/section_builder/section_state.dart';

class SectionsController extends StateNotifier<SectionState> {
  SectionsController({
    required Sections section,
  }) : super(SectionState(section: section));

  void updateSectionValue(Sections section) {
    // copyWith is used to ensure we keep state immutable
    state = state.copyWith(section: section);
  }
}

final sectionControllerProvider = StateNotifierProvider.autoDispose
    .family<SectionsController, SectionState, Sections>((ref, section) {
  return SectionsController(section: section);
});
