import 'package:example/routing/routes.dart';
import 'package:flutter/material.dart';

typedef NavigatorCallback = Future<void> Function(BuildContext context);

Future<void> navigateToDesignSystem(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemRoute);
}

Future<void> navigateToDesignFile(final BuildContext context) {
  return Navigator.of(context).pushNamed(designFileRoute);
}

Future<void> navigateToDesignSystemCards(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemCardsRoute);
}

Future<void> navigateToDesignSystemChips(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemChipsRoute);
}

Future<void> navigateToDesignSystemIcons(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemIconsRoute);
}

Future<void> navigateToDesignSystemPanels(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemPanelsRoute);
}

Future<void> navigateToDesignSystemText(final BuildContext context) {
  return Navigator.of(context).pushNamed(designSystemTextRoute);
}
