import 'package:flutter/material.dart';
import 'package:portfolio/src/features/info_bar/info_bar.dart';
import 'package:portfolio/src/features/navbar/nav_bar.dart';
import 'package:portfolio/src/features/section_builder/section_builder.dart';
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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _section;
  @override
  void initState() {
    setState(() {
      _section = 'home';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const InfoBar(),
            SectionBuilder(section: _section),
            const NavBar(),
          ],
        ),
      ),
    );
  }
}
