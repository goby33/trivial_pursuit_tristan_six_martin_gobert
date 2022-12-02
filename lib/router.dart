import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_app/presentation/ui/home/home.dart';
import 'package:trivial_pursuit_app/presentation/ui/login/login.dart';
import 'package:trivial_pursuit_app/presentation/ui/register/register.dart';
import 'package:trivial_pursuit_app/presentation/ui/user_forgot/user_forgot.dart';

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
              return const Register();
            }),
        GoRoute(
            path: '/forgot',
            name: 'forgot',
            builder: (context, state) {
              return const UserForgot();
            }),
      ], initialLocation: '/login', debugLogDiagnostics: true);
}
