// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/utils/Assets.dart';
import 'package:homehaven/features/Home/data/models/ProductModel.dart';

class Productimage_Section extends StatefulWidget {
  const Productimage_Section({
    super.key,
    required this.product,
  });
  final Productmodel product;
  @override
  State<Productimage_Section> createState() => _Productimage_SectionState();
}

class _Productimage_SectionState extends State<Productimage_Section> {
  int selectedIndex = 0;

  late List<String> thumbnails;
  late String selectedImage;
  void initState() {
    super.initState();
    selectedImage = widget.product.image;
    thumbnails = [
      widget.product.image, // ← الصورة الأساسية
      Assets.Thumbnail2,
      Assets.Thumbnail3,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 442,
      child: Column(
        children: [
          Image.asset(
            selectedImage,
            fit: BoxFit.cover,
            width: 264,
            height: 264,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              thumbnails.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = thumbnails[index];
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: image_box(
                      isselected: selectedImage == thumbnails[index],
                      image: thumbnails[index],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class image_box extends StatelessWidget {
  const image_box({
    super.key,
    required this.isselected,
    required this.image,
  });
  final bool isselected;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            width: 2.2, color: isselected ? KPrimaryColor : Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          height: 45,
          width: 45,
        ),
      ),
    );
  }
}
