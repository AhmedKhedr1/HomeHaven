import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffC2C2C2),
            indent: 20,
            endIndent: 10,
          ),
        ),
        Column(
          children: [
            Text(
              'OR',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffC2C2C2),
            indent: 10,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}
