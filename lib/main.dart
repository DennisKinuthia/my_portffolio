import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in web urls
  setPathUrlStrategy();
  //* Enrty point of the app
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// TODO: create method to register error handlers

