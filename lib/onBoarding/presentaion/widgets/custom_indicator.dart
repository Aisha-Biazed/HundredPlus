import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:handred_plus_app/core/utils/color_manager.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, required this.dotIndex}) : super(key: key);
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          size: const Size(31, 5),
          activeSize: const Size(31, 5),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: ColorManager.primary)),
          color: ColorManager.grey,
          activeColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.transparent))),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
