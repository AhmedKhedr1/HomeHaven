import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Styless.dart';

class CustomTexfield extends StatefulWidget {
  const CustomTexfield(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.suffixIcon,
      required this.isPassword});
  final String hintText, prefixIcon, suffixIcon;
  final bool isPassword;

  @override
  State<CustomTexfield> createState() => _CustomTexfieldState();
}

class _CustomTexfieldState extends State<CustomTexfield> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? obscureText : false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffE0E0E0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffE0E0E0),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xffE0E0E0),
          ),
        ),
        labelText: widget.hintText,
        labelStyle: Styless.Caption,
        prefixIcon: Image.asset(widget.prefixIcon),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: Image.asset(widget.suffixIcon))
            : null,
      ),
    );
  }
}
