import 'package:flutter/material.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Product_details_BottomBar.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/ProductdetailsView_body.dart';
import 'package:homehaven/features/Home/data/models/ProductModel.dart';

class ProductDetailsview extends StatelessWidget {
  const ProductDetailsview({super.key, required this.productmodel});
final Productmodel productmodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: ProductdetailsviewBody(productmodel: productmodel,),
      bottomNavigationBar: Product_details_BottomBar(),
    );
  }
}
