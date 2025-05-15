import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/CustomDot.dart';

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
        Dots_indicator(CurrentpageIndex: currentpageindex,)
      ],
    );
  }
}

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

class Dots_indicator extends StatelessWidget {
  const Dots_indicator({
    super.key,
    required this.CurrentpageIndex,
  });
  final int CurrentpageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CustomDot(isactive: index == CurrentpageIndex),
          );
        },
      ),
    );
  }
}
