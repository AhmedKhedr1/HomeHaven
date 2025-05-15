
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';

class Rating_bar extends StatelessWidget {
  const Rating_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(Assets.Staricon),
      SizedBox(width: 8,),
      Text('4.9'),
      SizedBox(width: 5,),
      Text('(256)')
    ],);
  }
}
