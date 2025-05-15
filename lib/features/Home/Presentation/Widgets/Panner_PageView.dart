
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';

class Panner_PageView extends StatelessWidget {
  const Panner_PageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Image.asset(
              Assets.Homebanner,
              fit: BoxFit.fill,
            );
          }),
    );
  }
}
