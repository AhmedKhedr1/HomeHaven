import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/features/Home/data/models/ProductModel.dart';

class Rating_bar extends StatelessWidget {
  const Rating_bar({
    super.key, required this.productmodel,
  });
  final Productmodel productmodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.Staricon),
        SizedBox(
          width: 8,
        ),
        Text(productmodel.raing),
        SizedBox(
          width: 5,
        ),
        Text('(${productmodel.NumOfRate})')
      ],
    );
  }
}
