
import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/widgets/Custom_button.dart';

class Button_bar extends StatelessWidget {
  const Button_bar({
    super.key,
    required this.currentPageIndex,
    required this.onNextPressed,required this.onBackPressed,
  });

  final int currentPageIndex;
  final void Function()? onNextPressed, onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: currentPageIndex == 0
            ? [
                CustomButton(
                  onPressed: onNextPressed,
                  textbutton: 'Next',
                  width: 350,
                  height: 40,
                  textcolor: KBackgroundColor,
                  buttoncolor: KPrimaryColor,
                ),
              ]
            : [
                CustomButton(
                  onPressed: onBackPressed,
                  textbutton: 'Back',
                  width: 100,
                  height: 40,
                  textcolor: KPrimaryColor,
                  buttoncolor: KBackgroundColor,
                ),
                SizedBox(
                  width: 16,
                ),
                CustomButton(
                  onPressed: onNextPressed,
                  textbutton: 'Next',
                  width: 223,
                  height: 40,
                  textcolor: KBackgroundColor,
                  buttoncolor: KPrimaryColor,
                ),
              ],
      ),
    );
  }
}
