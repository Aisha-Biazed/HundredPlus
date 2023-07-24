import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handred_plus_app/core/utils/strings_manager.dart';
import 'package:handred_plus_app/core/widgets/custom_buttons.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width:double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/photo_2023-07-24_05-11-58.jpg'),
          fit: BoxFit.fitWidth,
          alignment: AlignmentDirectional.topStart,
        )),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            318.verticalSpace,
            Image.asset('assets/images/iconsign.png'),
            Spacer(),
            // Padding(
            //   padding: REdgeInsetsDirectional.only(start: 52.w, end: 52.w),
            //   child: Custom(
            //       title: AppStrings.startTitle,
            //       color: AppColor.benBlack,
            //       size: 20.sp),
            // ),
            Spacer(flex: 2),
            CustomGeneralButton(text: AppStrings.startLogin, onTap: () {}),
            Spacer(),
            // CustomGeneralButton(
            //     color: Colors.transparent,
            //     textColor: AppColor.orange,
            //     title: AppText.startCreateAccount,
            //     onTap: () {}),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
