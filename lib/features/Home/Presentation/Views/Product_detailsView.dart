import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Product_details_BottomBar.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/ProductdetailsView_body.dart';

class ProductDetailsview extends StatelessWidget {
  const ProductDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: ProductdetailsviewBody(),
      bottomNavigationBar: Product_details_BottomBar(),
    );
  }
}
