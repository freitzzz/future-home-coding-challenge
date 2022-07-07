import 'package:example/views/views.dart';
import 'package:flutter/material.dart';

const homeRoute = 'home';
const designFileRoute = 'design-file';
const designSystemRoute = 'design-system';

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
      case homeRoute:
      default:
        return HomePageRoute();
    }
  };
}
