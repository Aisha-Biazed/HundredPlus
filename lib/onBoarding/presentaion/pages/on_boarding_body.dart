import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            bottom: 300.w,
            child: CustomIndicator(
              dotIndex: pageController!.hasClients ? pageController?.page : 0,
            )),
        Positioned(
          left: 100,
          right: 100,
          bottom: 80,
          child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {}
              },
              text: AppStrings.next),
        )
      ],
    );
  }
}
