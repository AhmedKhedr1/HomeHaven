import 'package:flutter/material.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/core/utils/Styless.dart';
import 'package:homehaven/features/Home/data/models/CategoryModel.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Categorymodel> Categories = [
      Categorymodel(
          icon: Assets.Outdoor, title: 'Outdoor', color: Color(0xffE0F0E3)),
      Categorymodel(
          icon: Assets.appliance,
          title: 'Appliances',
          color: Color(0xffDEEBFF)),
      Categorymodel(
          icon: Assets.Furniture, title: 'Furniture', color: Color(0xffF7E4BC)),
      Categorymodel(
          icon: Assets.moreicon, title: 'See More', color: Color(0xffEEEEEE))
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shop by Categories',
            style: Styless.Heading3,
          ),
          SizedBox(
            height: 16,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: Categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 12,
              mainAxisSpacing:12,
            ),
            itemBuilder: (context, index) {
              return Category_item(
                categorymodel: Categories[index],
              );
            },
          )
        ],
      ),
    );
  }
}

class Category_item extends StatelessWidget {
  const Category_item({
    super.key,
    required this.categorymodel,
  });
  final Categorymodel categorymodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 163.5,
      decoration: BoxDecoration(
          color: categorymodel.color, borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(categorymodel.icon),
          SizedBox(
            width: 12,
          ),
          Text(
            categorymodel.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
