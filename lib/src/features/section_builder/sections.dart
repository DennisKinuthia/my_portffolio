import 'package:flutter/material.dart';
import 'package:portfolio/src/features/blog/presentation/blog.dart';
import 'package:portfolio/src/features/contact/presentation/contact.dart';
import 'package:portfolio/src/features/history/presentation/history.dart';
import 'package:portfolio/src/features/home_section/presentation/home_section.dart';
import 'package:portfolio/src/features/portfolio/presentation/components/portfolio.dart';
import 'package:portfolio/src/features/section_builder/section_state.dart';

class SectionOptions {
  static const home = HomePage();
  static const portfolio = Portfolio();
  static const history = History();
  static const contact = Contact();
  static const blog = Blog();
}

Map<String, Widget> sectionsPages = {
  Sections.home.name: SectionOptions.home,
  Sections.portfolio.name: SectionOptions.portfolio,
  Sections.history.name: SectionOptions.history,
  Sections.contact.name: SectionOptions.contact,
  Sections.blog.name: SectionOptions.blog,
};
