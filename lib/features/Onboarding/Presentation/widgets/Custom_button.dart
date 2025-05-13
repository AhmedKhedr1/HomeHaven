import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.onPressed});
void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color(0xff156651),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 149,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        'Next',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
