import 'package:flutter/material.dart';
import 'package:homehaven/features/Onboarding/Presentation/widgets/OnBoarding_View_Body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: OnBoardingViewBody(),
    );
  }
}
