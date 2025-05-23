
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';

class buildListTile extends StatelessWidget {
  const buildListTile({
    super.key,
    required this.leading,
    required this.title,
  });
  final String leading, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 1),
            )
          ]),
      child: ListTile(
        leading: Image.asset(
          leading,
          width: 26,
          height: 26,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: Styless.BodyRegular,
        ),
        trailing: Image.asset(Assets.downicon),
      ),
    );
  }
}
