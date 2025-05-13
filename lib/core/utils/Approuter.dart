import 'package:go_router/go_router.dart';
import 'package:homehaven/features/Auth/presentation/Views/Login_view.dart';
import 'package:homehaven/features/Auth/presentation/Views/Register_view.dart';
import 'package:homehaven/features/Onboarding/Presentation/views/Onboarding_view.dart';
import 'package:homehaven/features/Splash/presentation/views/Splash_view.dart';

abstract class Approuter {
  static const String KSplashView = '/';
  static const String KonboardingView = '/onboardingview';
  static const String KLoginView = '/loginview';
  static const String KRegisterView = '/registerview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KSplashView,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: KonboardingView,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: KLoginView,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: KRegisterView,
        builder: (context, state) => RegisterView(),
      ),
    ],
  );
}
