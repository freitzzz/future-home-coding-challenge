import 'package:example/routing/routing.dart';
import 'package:fhds/fhds.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Home',
      theme: fhdsLightTheme,
      darkTheme: fhdsLightTheme,
      onGenerateInitialRoutes: onGenerateInitialRoutes(),
      onGenerateRoute: onGenerateRoute(),
      initialRoute: initialRoute,
    );
  }
}
