import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Color_Section.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Productimage_Section.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Rating_bar.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Product_Section(),
              Divider(
                height: 32,
              ),
              ColorSection(),
              Divider(
                height: 32,
              ),
            ],
          ),
        )
      ],
    );
  }
}

// must change this widget name
class Product_Section extends StatelessWidget {
  const Product_Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Text(
            'EKERÖ',
            style: Styless.BodyRegular,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                r'$230.00',
                style: Styless.Heading2,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                r'$230.00',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                width: 8,
              ),
              Image.asset(Assets.disc)
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Rating_bar(),
          SizedBox(
            height: 14,
          ),
          Text(
            'A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear.',
            style: Styless.BodyRegular,
          ),
        ],
      ),
    );
  }
}
