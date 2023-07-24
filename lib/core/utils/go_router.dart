import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:handred_plus_app/onBoarding/presentaion/pages/onboarding_view.dart';
import '../../splash/presntation/pages/splash_view.dart';

class AppRouter {
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
          path: '/splash',
          name: 'splash',
          builder: (context, state) => const SplashView(),
          routes: [
            GoRoute(
              path: 'onBoarding',
              name: 'onBoarding',
              builder: (context, state) => const OnBoardingView(),
            )
          ]),
    ],
  );
}
