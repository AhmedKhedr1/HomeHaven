import 'package:flutter/material.dart';
import 'package:homehaven/Constant.dart';

class ColorSection extends StatelessWidget {
  const ColorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> colors = [
      {'name': 'Harvest Gold', 'color': const Color(0xffE3AD33)},
      {'name': 'Eerie Black', 'color': const Color(0xff1B1B1B)},
      {'name': 'Flame', 'color': const Color(0xffF24E1E)},
      {'name': 'Pakistan Green', 'color': const Color(0xff006400)},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Colors',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            width: 350,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 55,
              ),
              itemBuilder: (context, index) {
                return Color_box(
                  boxcolor: colors[index]['color'],
                  boxname: colors[index]['name'],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Color_box extends StatelessWidget {
  const Color_box({
    super.key,
    required this.boxcolor,
    required this.boxname,
  });
  final String boxname;
  final Color boxcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      width: 163,
      height: 51,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: KPrimaryColor)),
      child: Row(
        children: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: boxcolor,
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Text(boxname)
        ],
      ),
    );
  }
}
