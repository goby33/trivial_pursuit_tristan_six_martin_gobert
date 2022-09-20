import 'package:go_router/go_router.dart';

import '../pages/home/home.dart';

abstract class AppRoutes {
  static const root = '/';

  static GoRouter buildRouter() => GoRouter(routes: [
        GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) {
              return Home();
            }),
      ], initialLocation: '/', debugLogDiagnostics: true);
}
