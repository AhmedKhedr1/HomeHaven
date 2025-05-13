// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.onPressed, required this.textbutton});
  void Function()? onPressed;
  final String textbutton;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: Color(0xff156651),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        textbutton,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
