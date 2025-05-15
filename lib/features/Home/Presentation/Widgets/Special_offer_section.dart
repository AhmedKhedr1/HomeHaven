// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Specialoffer_listview.dart';

class Special_offer_section extends StatelessWidget {
  const Special_offer_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special Offers',
                  style: Styless.Heading3,
                ),
                Text(
                  'See More',
                  style: TextStyle(
                      fontSize: 14,
                      color: KPrimaryColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Specialoffer_listview()
          ],
        ));
  }
}
