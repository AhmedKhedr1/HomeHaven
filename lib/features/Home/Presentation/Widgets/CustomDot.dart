
import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isactive});
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 10,
      width: 10,
      decoration: ShapeDecoration(
        color:isactive?KPrimaryColor: Color(0xffE0E0E0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
