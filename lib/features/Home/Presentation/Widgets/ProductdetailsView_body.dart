import 'package:flutter/material.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Productimage_Section.dart';

class ProductdetailsviewBody extends StatelessWidget {
  const ProductdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 24,
        ),
        Productimage_Section(),
        SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(17),
                topLeft: Radius.circular(17),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 15,
                )
              ]),
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }
}
