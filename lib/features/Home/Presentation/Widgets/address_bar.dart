import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';

class address_bar extends StatelessWidget {
  const address_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(Assets.Locationicon),
          SizedBox(
            width: 8,
          ),
          Text(
            'Deliver to',
            style: Styless.BodySmallRegular,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            '3517 W. Gray St. Utica, Pennsylvania',
            style: Styless.BodySmallBold,
          ),
          SizedBox(
            width: 8,
          ),
          Image.asset(Assets.downicon)
        ],
      ),
    );
  }
}
