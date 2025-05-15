// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:homehaven/features/Onboarding/Presentation/widgets/onBoardingpageview.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: onBoardingpageview(),
    );
  }
}
