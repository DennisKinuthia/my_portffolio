import 'package:flutter/material.dart';

class SectionBuilder extends StatefulWidget {
  const SectionBuilder({super.key, required this.section});

  final String section;

  @override
  State<SectionBuilder> createState() => _SectionBuilderState();
}

class _SectionBuilderState extends State<SectionBuilder> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
