import 'package:softa/presentation/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:softa/presentation/fonts_manager.dart';
import 'package:softa/presentation/styles_manager.dart';
import 'package:softa/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //colors of the app
      primaryColor: ColorManager.priamryColor,
      primaryColorLight: ColorManager.priamryColor.withOpacity(0.7),
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,
      accentColor: ColorManager.grey,
      splashColor: ColorManager.priamryColor.withOpacity(0.7),

      //card view theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),

      //app bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.priamryColor,
          elevation: AppSize.s4,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s16),
          shadowColor: ColorManager.priamryColor.withOpacity(0.7)),

      //text theme
      textTheme: TextTheme(
        headline1: getSemiBoldStyle(color: ColorManager.darkPrimary, fontSize: FontSize.s16),
        subtitle1: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
        caption: getRegularStyle(color: ColorManager.grey1),
        bodyText1: getRegularStyle(color: ColorManager.grey),

      ),


      );
}
