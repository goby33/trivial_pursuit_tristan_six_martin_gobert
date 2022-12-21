import 'package:flutter/material.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/router.dart';

class TrivialPursuitApp extends StatelessWidget {
  TrivialPursuitApp({Key? key}) : super(key: key);


  final _router = AppRoutes.buildRouter();


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
      title: 'Trivial Pursuit',
    );
  }
}
