
import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/SearchtexField.dart';

class search_bar extends StatelessWidget {
  const search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(child: SearchtexField()),
          SizedBox(
            width: 16,
          ),
          Image.asset(Assets.Notificationicon),
        ],
      ),
    );
  }
}
