import 'package:go_router/go_router.dart';

import '../pages/home/home.dart';
import '../pages/login/login.dart';

abstract class AppRoutes {
  static const root = '/';

  static GoRouter buildRouter() => GoRouter(routes: [
        GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) {
              return Home();
            }),
        GoRoute(
            path: '/login',
            name: 'login',
            builder: (context, state) {
              return Login();
            }),
      ], initialLocation: '/login', debugLogDiagnostics: true);
}
