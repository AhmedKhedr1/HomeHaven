import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';

class User_info extends StatelessWidget {
  const User_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 343,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 2),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Container(
              width: 58,
              height: 58,
              child: Image.asset(
                Assets.user,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 6.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Claire Cooper',
                  style: Styless.Heading4,
                ),
                Text(
                  'claire.cooper@mail.com',
                  style: Styless.BodySmallRegular.copyWith(
                      color: Color(0xff757575)),
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset(Assets.editicon),
          SizedBox(
            width: 33,
          )
        ],
      ),
    );
  }
}
