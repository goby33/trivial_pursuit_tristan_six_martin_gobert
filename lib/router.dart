import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/home_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/sign_in_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/sign_up_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/splash/splash_page.dart';

abstract class AppRoutes {
  static const root = '/';
  static const home = '/home';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';

  static GoRouter buildRouter() => GoRouter(
      initialLocation: '/home',
      routes: [
        GoRoute(
          path: root,
          builder: (context, state) => const SplashPage(),
          routes: const [],
        ),
        GoRoute(
          path: signIn,
          builder: (context, state) => const SignInPage(),
          routes: const [],
        ),
        GoRoute(
          path: signUp,
          builder: (context, state) => const SignUpPage(),
          routes: const [],
        ),
        GoRoute(
          path: home,
          builder: (context, state) => const HomePage(),
          routes: const [],
        ),
      ]
  );
}
