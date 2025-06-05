import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Rating_bar.dart';
import 'package:homehaven/features/Home/data/models/ProductModel.dart';

class Specialoffers_item extends StatelessWidget {
  const Specialoffers_item({
    super.key,
    required this.productmodel,
  });
  final Productmodel productmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      width: 160,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productmodel.image,
            height: 150,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            productmodel.name,
            style: Styless.BodySmallRegular,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '\$ ${productmodel.price}',
            style: Styless.Heading4,
          ),
          Text(
            '\$ ${productmodel.discprice}',
            style: TextStyle(fontSize: 12),
          ),
          Rating_bar(
            productmodel: productmodel,
          ),
        ],
      ),
    );
  }
}
