import 'package:flutter/material.dart';
import 'package:homehaven/feature/widgets/Custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/onboarding1.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Online Home Store\nand Furniture',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff404040)),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Discover all style and budgets of \n furniture, appliances, kitchen, and more \n from 500+ brands in your hand.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff757575), fontSize: 18),
          ),
          SizedBox(
            height: 74,
          ),
          CustomButton()
        ],
      ),
    );
  }
}
