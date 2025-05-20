// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';
import 'package:homehaven/core/utils/Assets.dart';

class Productimage_Section extends StatefulWidget {
  const Productimage_Section({
    super.key,
  });

  @override
  State<Productimage_Section> createState() => _Productimage_SectionState();
}

class _Productimage_SectionState extends State<Productimage_Section> {
  int selectedIndex = 0;

  final List<String> thumbnails = [
    Assets.chair1,
    Assets.Thumbnail2,
    Assets.Thumbnail3,
  ];
  late String selectedImage;
  void initState() {
    super.initState();
    selectedImage = thumbnails[0];
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
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            width: 1.5, color: isselected ? KPrimaryColor : Colors.white),
      ),
      child: Image.asset(
        image,
        height: 50,
        width: 50,
      ),
    );
  }
}
