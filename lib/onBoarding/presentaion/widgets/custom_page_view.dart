import 'package:flutter/material.dart';
import 'package:handred_plus_app/core/utils/assets_manager.dart';
import 'package:handred_plus_app/onBoarding/presentaion/widgets/page_view_item.dart';

import '../../../core/utils/strings_manager.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageController})
      : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: PageView(
        controller: pageController,
        children: const [
          PageViewItem(
            image: ImageAssets.onBoarding_1,
            title: AppStrings.onBoardingView_1Text1,
            subTitle: AppStrings.onBoardingView_1Text2,
          ),
          PageViewItem(
            image: ImageAssets.onBoarding_3,
            title: AppStrings.onBoardingView_2Text1,
            subTitle: AppStrings.onBoardingView_2Text2,
          ),
          PageViewItem(
            image: ImageAssets.onBoarding_2,
            title: AppStrings.onBoardingView_2Text3,
            subTitle: "",
          ),
        ],
      ),
    );
  }
}
