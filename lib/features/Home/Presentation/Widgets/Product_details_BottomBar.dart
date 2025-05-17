
import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/widgets/Custom_button.dart';

class Product_details_BottomBar extends StatelessWidget {
  const Product_details_BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: KPrimaryColor),
                  borderRadius: BorderRadius.circular(8)),
              child: Image.asset(Assets.loveicon),
            ),
            SizedBox(
              width: 16,
            ),
            CustomButton(
                onPressed: () {},
                textbutton: 'Add to Cart',
                width: 283,
                height: 43,
                textcolor: KBackgroundColor,
                buttoncolor: KPrimaryColor)
          ],
        ),
      ),
    );
  }
}
