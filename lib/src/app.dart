import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/info_bar/info_bar.dart';
import 'package:portfolio/src/features/section_builder/section_builder.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';
import 'package:portfolio/src/localization/string_hardcoded.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'My Portfolio'.hardcoded,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF191923),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const InfoBar(),
            Expanded(
              child: Consumer(
                builder: (context, ref, _) {
                  final section = ref.watch(sectionProvider);
                  return SectionBuilder(section: section);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
