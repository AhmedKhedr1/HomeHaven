
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';

class Productimage_Section extends StatelessWidget {
  const Productimage_Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 442,
      child: Column(
        children: [
          Image.asset(
            Assets.chair1,
            width: 264,
            height: 264,
          ),
        ],
      ),
    );
  }
}
