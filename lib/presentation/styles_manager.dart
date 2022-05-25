import 'package:softa/presentation/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(
    double fontSize, String fontfamily, Color color, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontfamily,
    color: color,
    fontWeight: fontWeight,
  );
}

//regular Style

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontfamily, color, FontWeightManager.regular);
}

//light text Style

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontfamily, color, FontWeightManager.light);
}

// bold text style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontfamily, color, FontWeightManager.bold);
}

//get semiBold Style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontfamily, color, FontWeightManager.semiBold);
}

// get medium style
TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, FontsConstants.fontfamily, color, FontWeightManager.medium);
}
