import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Rating_bar.dart';

class Specialoffers_item extends StatelessWidget {
  const Specialoffers_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      width: 160,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.chair1,
            height: 150,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'EKERÖ',
            style: Styless.BodySmallRegular,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            r'$230.00',
            style: Styless.Heading4,
          ),
          Text(
            r'$512.58',
            style: TextStyle(fontSize: 12),
          ),
          Rating_bar(),
        ],
      ),
    );
  }
}
