import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homehaven/core/utils/Approuter.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Specialoffers_item.dart';
import 'package:homehaven/features/Home/data/models/ProductModel.dart';

class Specialoffer_listview extends StatelessWidget {
  const Specialoffer_listview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Productmodel> products = [
      Productmodel(
          image: Assets.chair1,
          name: 'EKERÖ',
          price: '230.00',
          discprice: '512.58',
          raing: '4.9 ',
          NumOfRate: '256'),
      Productmodel(
          image: Assets.chair2,
          name: 'STRANDMON',
          price: '274.13',
          discprice: '856.60',
          raing: '4.9 ',
          NumOfRate: '256'),
      Productmodel(
          image: Assets.item3,
          name: 'PLATTLÄNS',
          price: '24.99',
          discprice: '69.99',
          raing: '4.9 ',
          NumOfRate: '256'),
      Productmodel(
          image: Assets.item4,
          name: 'MALM',
          price: '139.99',
          discprice: '512.58',
          raing: '4.9 ',
          NumOfRate: '256')
    ];
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Approuter.KproductView,
              extra: products[index]);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Specialoffers_item(
                productmodel: products[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
