
import 'package:flutter/material.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Specialoffers_item.dart';

class Specialoffer_listview extends StatelessWidget {
  const Specialoffer_listview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Specialoffers_item(),
          );
        },
      ),
    );
  }
}
