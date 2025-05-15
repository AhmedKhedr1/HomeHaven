import 'package:flutter/material.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Dots_indicator.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Panner_PageView.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  late PageController pageController;
  int currentpageindex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(
      () {
        currentpageindex = pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Panner_PageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 16,
        ),
        Dots_indicator(
          CurrentpageIndex: currentpageindex,
        )
      ],
    );
  }
}
