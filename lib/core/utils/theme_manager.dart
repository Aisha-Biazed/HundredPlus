import 'package:flutter/material.dart';
import 'package:handred_plus_app/core/utils/color_manager.dart';
import 'package:handred_plus_app/core/utils/font_manager.dart';
import 'package:handred_plus_app/core/utils/styles_manager.dart';
import 'package:handred_plus_app/core/utils/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    fontFamily: FontConstants.fontFamily,
    primaryColor: ColorManager.primary,
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(AppSize.s307, AppSize.s56),
          textStyle:
              getMediumStyle(color: ColorManager.white, fontSize: FontSize.s20),
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s20))),
    ),
    textTheme: TextTheme(
        titleMedium: getMediumStyle(
            color: ColorManager.darkLight, fontSize: FontSize.s18),
        titleSmall:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManager.darkLight),
        bodySmall: getRegularStyle(color: ColorManager.grey),
        bodyMedium:
            getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s12),
        labelSmall:
            getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s12)),

    // label style
  );
}
