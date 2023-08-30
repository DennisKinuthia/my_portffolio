import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/features/blog/presentation/blog.dart';
import 'package:portfolio/src/features/contact/presentation/contact.dart';
import 'package:portfolio/src/features/history/presentation/history.dart';
import 'package:portfolio/src/features/home_section/presentation/home_section.dart';
import 'package:portfolio/src/features/portfolio/presentation/components/portfolio.dart';

enum Sections {
  home,
  portfolio,
  history,
  contact,
  blog,
}

Map<Sections, Widget> sectionsPages = {
  Sections.home: const HomePage(),
  Sections.portfolio: const Portfolio(),
  Sections.history: const History(),
  Sections.contact: const Contact(),
  Sections.blog: const Blog(),
};

final sectionProvider = StateProvider<Sections>(
  (ref) => Sections.home,
);
