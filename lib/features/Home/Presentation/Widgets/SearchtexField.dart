
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';

class SearchtexField extends StatelessWidget {
  const SearchtexField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search candles',
          hintStyle: Styless.BodySmallRegular,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(
              width: 1,
              color: Color(0xffE0E0E0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(
              width: 1,
              color: Color(0xffE0E0E0),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide(
              width: 1,
              color: Color(0xffE0E0E0),
            ),
          ),
          prefixIcon: Image.asset(
            Assets.Searchicon,
            width: 20,
            height: 20,
          ),
          suffixIcon: Image.asset(
            Assets.cameraicon,
            width: 20,
            height: 20,
          )),
    );
  }
}
