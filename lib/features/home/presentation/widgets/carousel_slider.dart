import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'carousel_slider_model.dart';

class CarouselSliderR extends StatelessWidget {
  const CarouselSliderR({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 398.w,
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.5,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            enlargeFactor: 1,
            viewportFraction: 1),
        items: ls.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container();
            },
          );
        }).toList(),
      ),
    );
  }
}
