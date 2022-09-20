import 'package:flutter/material.dart';
import 'package:trivial_pursuit_app/ui/routes/app_routes.dart';

import 'main_providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = AppRoutes.buildRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  Builder(
        builder: (context) {
          return MaterialApp.router(
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            routeInformationProvider: _router.routeInformationProvider,
            debugShowCheckedModeBanner: true,
            darkTheme: ThemeData(

            ),
            theme: ThemeData(
              primaryColor: Color.fromRGBO(131, 197, 190, 1),
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              textTheme: const TextTheme(
                headline1: TextStyle( fontSize: 20, fontWeight: FontWeight.bold)
              )
            ),
          );
        },
    );
  }
}
