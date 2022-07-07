import 'package:example/routing/routes.dart';
import 'package:flutter/material.dart';

Future<void> navigateToDesignSystem(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemRoute);
}

Future<void> navigateToDesignFile(final BuildContext context) {
  return Navigator.of(context).pushNamed(designFileRoute);
}
