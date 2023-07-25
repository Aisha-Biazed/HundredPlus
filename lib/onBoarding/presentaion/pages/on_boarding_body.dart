import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus_app/core/utils/values_manager.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/strings_manager.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../widgets/custom_indicator.dart';
import '../widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAssets.onBoarding,
        ),
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: AppPadding.p300,
            child: CustomIndicator(
              dotIndex: pageController!.hasClients ? pageController?.page : 0,
            )),
        Positioned(
          left: AppPadding.p34,
          right: AppPadding.p34,
          bottom: 80,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(AppStrings.next),
          ),
        )
      ],
    );
  }
}
