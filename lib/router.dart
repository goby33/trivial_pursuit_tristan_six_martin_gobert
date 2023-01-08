import 'package:go_router/go_router.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/forgot_password/forgot_password_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/home/home_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/settings/settings_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_in/sign_in_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/sign_up/sign_up_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/splash/splash_page.dart';
import 'package:trivial_pursuit_six_tristan_gobert_martin/presentation/ui/welcome/welcome_page.dart';

abstract class AppRoutes {
  static const root = '/';
  static const home = '/home';
  static const signIn = '/sign-in';
  static const signUp = '/sign-up';
  static const forgot = '/forgot-password';
  static const welcome = '/welcome';

  static GoRouter buildRouter() =>
      GoRouter(initialLocation: '/', routes: [
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
          path: forgot,
          builder: (context, state) => const ForgotPasswordPage(),
          routes: const [],
        ),
        GoRoute(
          path: signUp,
          builder: (context, state) => const SignUpPage(),
          routes: [
            GoRoute(
              name: 'welcome',
              path: 'welcome/:name',
              builder: (context, state) =>  WelcomePage(name: state.params['name']!),
              routes: const [],
            ),
          ],
        ),
        GoRoute(
          path: home,
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              name: 'settings',
              path: 'settings',
              builder: (context, state) =>  SettingsPage(),
              routes: const [],
            ),
          ],
        ),
      ]);
}



