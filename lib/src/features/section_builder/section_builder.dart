import 'package:flutter/material.dart';
import 'package:portfolio/src/features/home_section/presentation/home_section.dart';

class SectionBuilder extends StatefulWidget {
  const SectionBuilder({super.key, required this.section});

  final String section;

  @override
  State<SectionBuilder> createState() => _SectionBuilderState();
}

class _SectionBuilderState extends State<SectionBuilder> {
  double _xOffset = 0;
  bool _isDrawerOpen = false;
  void _openDrawer() {
    setState(() {
      _xOffset = 100;
      _isDrawerOpen = true;
    });
  }

  void _closeDrawer() {
    setState(() {
      _xOffset = 0;
      _isDrawerOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(_xOffset, 0, 0),
      duration: const Duration(milliseconds: 250),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[HomeSection()],
      ),
    );
  }
}
