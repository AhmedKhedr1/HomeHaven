
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homehaven/core/utils/Approuter.dart';
import 'package:homehaven/features/Onboarding/Presentation/widgets/OnBoarding_View_Body.dart';
import 'package:homehaven/features/Onboarding/data/models/Onboarding_page_model.dart';

class onBoardingpageview extends StatefulWidget {
  const onBoardingpageview({super.key});

  @override
  State<onBoardingpageview> createState() => _onBoardingpageviewState();
}

class _onBoardingpageviewState extends State<onBoardingpageview> {
   final PageController _pageController = PageController();
  int _currentPage = 0;
  List<OnboardingPageModel> items = [
    OnboardingPageModel(
        image: 'assets/images/onboarding1.png',
        Title: 'Online Home Store and Furniture',
        Subtitle:
            'Discover all style and budgets of furniture, appliances, kitchen, and more from 500+ brands in your hand.'),
    OnboardingPageModel(
        image: 'assets/images/onboarding2.png',
        Title: 'Delivery Right to Your Doorstep',
        Subtitle:
            'Sit back, and enjoy the convenience of our drivers delivering your order to your doorstep.'),
    OnboardingPageModel(
        image: 'assets/images/onboarding3.png',
        Title: 'Get Support From Our Skilled Team',
        Subtitle:
            'If our products don\'tmeetyourexpectations,we\'re available 24/7 to assist you.')
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        itemCount: items.length,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: ((context, index) {
          return OnBoardingViewBody(
            onboardingPageModel: items[index],
            currentPageIndex: _currentPage,
            onNextPressed: () {
              if (_currentPage < items.length - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                GoRouter.of(context).push(Approuter.KLoginView);
              }
            },
            onBackPressed: _currentPage > 0
                ? () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                : null,
          );
        }),
      );
  }
}