import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/style/app_theme.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/style/theme_service.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/router.dart';

class TrivialPursuitApp extends StatelessWidget {
  TrivialPursuitApp({Key? key}) : super(key: key);

  final _router = AppRoutes.buildRouter();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Trivial Pursuit',
      themeMode: ThemeService().theme,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
