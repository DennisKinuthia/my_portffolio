// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    this.value = const AsyncValue<void>.data(null),
  });

  final Sections section;
  final AsyncValue<void> value;

  bool get isLoading => value.isLoading;

  SectionState copyWith({
    Sections? section,
    AsyncValue<void>? value,
  }) {
    return SectionState(
      section: section ?? this.section,
      value: value ?? this.value,
    );
  }

  @override
  String toString() => 'SectionState(section: $section, value: $value)';

  @override
  bool operator ==(covariant SectionState other) {
    if (identical(this, other)) return true;

    return other.section == section && other.value == value;
  }

  @override
  int get hashCode => section.hashCode ^ value.hashCode;
}
