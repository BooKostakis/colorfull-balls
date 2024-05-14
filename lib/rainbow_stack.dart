import 'dart:math';

import 'package:flutter/material.dart';

Color randomColor() {
  final random = Random();
  return Color.fromRGBO(
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
    1,
  );
}

final color = randomColor();

class RainbowStack extends StatelessWidget {
  double maxWidth;
  double maxHeigth;
  double maxBorderRadius;
  int colorsQuantity;

  RainbowStack({
    super.key,
    required this.maxWidth,
    required this.maxHeigth,
    required this.maxBorderRadius,
    required this.colorsQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: List.generate(
        colorsQuantity,
        (index) => Container(
          width: maxWidth - index * (maxWidth / colorsQuantity),
          height: maxHeigth - index * (maxHeigth / colorsQuantity),
          decoration: BoxDecoration(
            color: randomColor(),
            borderRadius: BorderRadius.circular(maxBorderRadius),
          ),
        ),
      ),
    );
  }
}
