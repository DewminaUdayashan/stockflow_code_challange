import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stockflow_design_challenge/shared/app_routes.dart';
import 'package:stockflow_design_challenge/shared/app_theme.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stockflow Challenge',
      theme: AppTheme.themeData,
      darkTheme: AppTheme.themeData,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      initialRoute: AppRoutes.landingScreenRoute,
    );
  }
}
