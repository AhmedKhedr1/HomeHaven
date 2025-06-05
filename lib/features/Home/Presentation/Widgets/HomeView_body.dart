import 'package:flutter/material.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Banner_section.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/SearchBar.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/ShopByCategory.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/Special_offer_section.dart';
import 'package:homehaven/features/Home/Presentation/Widgets/address_bar.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            search_bar(),
            SizedBox(
              height: 8,
            ),
            address_bar(),
            SizedBox(
              height: 24,
            ),
            BannerSection(),
            SizedBox(
              height: 24,
            ),
            Special_offer_section(),
            SizedBox(
              height: 24,
            ),
            ShopByCategory(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
