import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Bottom_navigation_bar.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/HomeView_body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: HomeviewBody(),
      bottomNavigationBar: Bottom_navigation_bar(),
    );
  }
}
