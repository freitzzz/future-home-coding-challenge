import 'package:example/views/views.dart';
import 'package:flutter/material.dart';

const homeRoute = 'home';
const designFileRoute = 'design-file';
const designSystemRoute = 'design-system';
const designSystemExpansionTilesRoute = 'design-system/expansion-tiles';
const designSystemChipsRoute = 'design-system/chips';
const designSystemIconsRoute = 'design-system/icons';
const designSystemPanelsRoute = 'design-system/panels';
const designSystemTextRoute = 'design-system/text';

const initialRoute = homeRoute;

class HomePageRoute extends MaterialPageRoute {
  HomePageRoute()
      : super(
          builder: (context) {
            return const HomeView();
          },
          settings: const RouteSettings(
            name: homeRoute,
          ),
        );
}

class DesignFileRoute extends MaterialPageRoute {
  DesignFileRoute()
      : super(
          builder: (context) {
            return const DesignFileView();
          },
          settings: const RouteSettings(
            name: designFileRoute,
          ),
        );
}

class DesignSystemRoute extends MaterialPageRoute {
  DesignSystemRoute()
      : super(
          builder: (context) {
            return const DesignSystemView();
          },
          settings: const RouteSettings(
            name: designSystemRoute,
          ),
        );
}

class DesignSystemExpansionTilesRoute extends MaterialPageRoute {
  DesignSystemExpansionTilesRoute()
      : super(
          builder: (context) {
            return const DesignSystemExpansionTilesView();
          },
          settings: const RouteSettings(
            name: designSystemExpansionTilesRoute,
          ),
        );
}

class DesignSystemChipsRoute extends MaterialPageRoute {
  DesignSystemChipsRoute()
      : super(
          builder: (context) {
            return const DesignSystemChipsView();
          },
          settings: const RouteSettings(
            name: designSystemChipsRoute,
          ),
        );
}

class DesignSystemIconsRoute extends MaterialPageRoute {
  DesignSystemIconsRoute()
      : super(
          builder: (context) {
            return const DesignSystemIconsView();
          },
          settings: const RouteSettings(
            name: designSystemIconsRoute,
          ),
        );
}

class DesignSystemPanelsRoute extends MaterialPageRoute {
  DesignSystemPanelsRoute()
      : super(
          builder: (context) {
            return const DesignSystemPanelsView();
          },
          settings: const RouteSettings(
            name: designSystemPanelsRoute,
          ),
        );
}

class DesignSystemTextRoute extends MaterialPageRoute {
  DesignSystemTextRoute()
      : super(
          builder: (context) {
            return const DesignSystemTextView();
          },
          settings: const RouteSettings(
            name: designSystemTextRoute,
          ),
        );
}

InitialRouteListFactory onGenerateInitialRoutes() {
  return (initialRoute) => [HomePageRoute()];
}

RouteFactory onGenerateRoute() {
  return (settings) {
    switch (settings.name) {
      case designFileRoute:
        return DesignFileRoute();
      case designSystemRoute:
        return DesignSystemRoute();
      case designSystemExpansionTilesRoute:
        return DesignSystemExpansionTilesRoute();
      case designSystemChipsRoute:
        return DesignSystemChipsRoute();
      case designSystemIconsRoute:
        return DesignSystemIconsRoute();
      case designSystemPanelsRoute:
        return DesignSystemPanelsRoute();
      case designSystemTextRoute:
        return DesignSystemTextRoute();
      case homeRoute:
      default:
        return HomePageRoute();
    }
  };
}
