import 'package:flutter/material.dart';
import 'package:trivial_pursuit_app/theme/my_theme.dart';
import 'package:trivial_pursuit_app/theme/theme_service.dart';
import 'package:trivial_pursuit_app/ui/routes/app_routes.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = AppRoutes.buildRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return GetMaterialApp.router(
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          routeInformationProvider: _router.routeInformationProvider,
          debugShowCheckedModeBanner: true,
          darkTheme: MyTheme.dark,
          theme: MyTheme.light,
          themeMode: ThemeService().theme,
        );
      },
    );
  }
}
