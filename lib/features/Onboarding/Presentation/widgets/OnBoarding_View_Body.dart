// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Dots_indicator.dart';
import 'package:homehaven/features/Onboarding/Presentation/widgets/Button_bar.dart';
import 'package:homehaven/features/Onboarding/data/models/Onboarding_page_model.dart';

class OnBoardingViewBody extends StatelessWidget {
  OnBoardingViewBody(
      {super.key,
      required this.onboardingPageModel,
      required this.currentPageIndex,
      required this.onNextPressed,
      required this.onBackPressed});
  final OnboardingPageModel onboardingPageModel;
  final int currentPageIndex;
  void Function()? onNextPressed, onBackPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          onboardingPageModel.image,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          onboardingPageModel.Title,
          textAlign: TextAlign.center,
          style: Styless.Heading2,
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            onboardingPageModel.Subtitle,
            textAlign: TextAlign.center,
            style: Styless.Heading5,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Dots_indicator(CurrentpageIndex: currentPageIndex),
        SizedBox(
          height: 32,
        ),
        Button_bar(
          currentPageIndex: currentPageIndex,
          onNextPressed: onNextPressed,
          onBackPressed: onBackPressed,
        )
      ],
    );
  }
}
