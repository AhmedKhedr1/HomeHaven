// ignore_for_file: constant_identifier_names

import 'package:go_router/go_router.dart';
import 'package:homehaven/features/Account/Presentation/Views/AccountView.dart';
import 'package:homehaven/features/Auth/presentation/Views/Login_view.dart';
import 'package:homehaven/features/Auth/presentation/Views/Register_view.dart';
import 'package:homehaven/features/Home/Presentation/Views/HomeView.dart';
import 'package:homehaven/features/Home/Presentation/Views/Product_detailsView.dart';
import 'package:homehaven/features/Onboarding/Presentation/views/Onboarding_view.dart';
import 'package:homehaven/features/Splash/presentation/views/Splash_view.dart';

abstract class Approuter {
  static const String KSplashView = '/';
  static const String KonboardingView = '/onboardingview';
  static const String KLoginView = '/loginview';
  static const String KRegisterView = '/registerview';
  static const String KhomeView = '/HomeView';
  static const String KproductView = '/ProductDetailsView';
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
      GoRoute(
        path: KhomeView,
        builder: (context, state) => Accountview(),
      ),
      GoRoute(
        path: KproductView,
        builder: (context, state) => ProductDetailsview(),
      ),
    ],
  );
}
