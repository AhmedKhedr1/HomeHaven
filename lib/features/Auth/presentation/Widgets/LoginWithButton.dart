// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/utils/Styless.dart';

class LoginWithButton extends StatelessWidget {
   LoginWithButton(
      {super.key, required this.imagePath, required this.hintText,this.onTap});
  final String imagePath, hintText;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: KPrimaryColor),
          color: KBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              hintText,
              style: Styless.BodyBold.copyWith(color: KPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
