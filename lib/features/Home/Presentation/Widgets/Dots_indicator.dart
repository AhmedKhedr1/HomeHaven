// ignore_for_file: camel_case_types, non_constant_identifier_names, file_names
import 'package:flutter/material.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Custom_dot.dart';

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
