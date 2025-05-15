// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homehaven/core/utils/Assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff1B7F65),
            Color(0xff0B382C),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.homeIconsSvg),
          SizedBox(
            height: 16,
          ),
          Text(
            'HomeHaven',
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
