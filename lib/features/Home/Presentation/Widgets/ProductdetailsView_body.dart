import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';

class ProductdetailsviewBody extends StatelessWidget {
  const ProductdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          Assets.chair1,
          width: 264,
          height: 264,
        ),
        SizedBox(height: 16,),
        Container()
      ],
    );
  }
}
