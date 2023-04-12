import 'package:flutter/material.dart';
import 'package:stockflow_design_challenge/screens/landing/landing_screen.dart';
import 'package:stockflow_design_challenge/screens/result/result_screen.dart';

class AppRoutes {
  static const String landingScreenRoute = '/landing';
  static const String resultScreenRoute = '/result';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingScreenRoute: // Route for the home page
        return MaterialPageRoute(
          builder: (_) => const LandingScreen(),
        );
      case resultScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const ResultScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const LandingScreen(),
        );
    }
  }
}
