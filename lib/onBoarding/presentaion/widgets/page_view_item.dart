import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);
  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsetsDirectional.only(start: 0, end: 0, top: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RSizedBox(
              child: Image.asset(
            image!,
          )),
          70.verticalSpace,
          Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: ColorManager.darkLight),
          ),
          Text(
            subTitle!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.sp, color: ColorManager.darkLight),
          ),
        ],
      ),
    );
  }
}
