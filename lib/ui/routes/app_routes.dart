import 'package:go_router/go_router.dart';

import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/subscription/subscription.dart';

abstract class AppRoutes {
  static const root = '/';

  static GoRouter buildRouter() => GoRouter(routes: [
        GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) {
              return const Home();
            }),
        GoRoute(
            path: '/login',
            name: 'login',
            builder: (context, state) {
              return const Login();
            }),
        GoRoute(
            path: '/subscription',
            name: 'subscription',
            builder: (context, state) {
              return const Subscription();
            }),
      ], initialLocation: '/login', debugLogDiagnostics: true);
}
