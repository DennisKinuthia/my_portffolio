// ignore_for_file: public_member_api_docs, sort_constructors_first

enum Sections {
  home,
  portfolio,
  history,
  contact,
  blog,
}

class SectionState {
  SectionState({
    this.section = Sections.home,
  });

  final Sections section;

  SectionState copyWith({
    Sections? section,
  }) {
    return SectionState(
      section: section ?? this.section,
    );
  }

  @override
  String toString() => 'SectionState(section: $section)';

  @override
  bool operator ==(covariant SectionState other) {
    if (identical(this, other)) return true;

    return other.section == section;
  }

  @override
  int get hashCode => section.hashCode;
}
