import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stockflow_design_challenge/shared/app_routes.dart';
import 'package:stockflow_design_challenge/shared/app_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
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
      builder: (context, child) {
        ScreenUtil.init(context, designSize: const Size(411, 823));
        return child!;
      },
    );
  }
}
