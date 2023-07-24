import 'package:flutter/material.dart';
import 'package:handred_plus_app/core/utils/color_manager.dart';
import 'package:handred_plus_app/core/utils/font_manager.dart';
import 'package:handred_plus_app/core/utils/styles_manager.dart';
import 'package:handred_plus_app/core/utils/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getMediumStyle(
                color: ColorManager.white, fontSize: FontSize.s20),
            primary: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)))),
    textTheme: TextTheme(
        titleMedium:
            getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
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
