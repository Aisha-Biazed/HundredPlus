import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus_app/core/utils/color_manager.dart';
import 'package:handred_plus_app/core/utils/strings_manager.dart';
import 'package:handred_plus_app/core/widgets/custom_text.dart';

import '../../../../core/utils/assets_manager.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fitWidth,
        image: AssetImage(ImageAssets.backgroundSplash),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssets.logoSplash,
            width: 250.w,
            height: 250.h,
            fit: BoxFit.fitWidth,
          ),
          50.verticalSpace,
          TextCustom(
            text: AppStrings.splashViewText1,
            textColor: ColorManager.white,
            fontSize: 37,
          ),
          7.verticalSpace,
          TextCustom(
            text: AppStrings.splashViewText2,
            textColor: ColorManager.white,
            fontSize: 33,
          ),
        ],
      ),
    );
  }
}
