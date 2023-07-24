import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handred_plus_app/onBoarding/presentaion/pages/on_boarding_body.dart';
import '../../../core/utils/color_manager.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white, body: const OnBoardingViewBody());
  }
}
