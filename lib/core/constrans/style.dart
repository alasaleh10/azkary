import 'package:azkary/core/constrans/app_fonts.dart';
import 'package:azkary/core/constrans/colors.dart';
import 'package:azkary/core/responsive_adaptive_helper/responsive_text.dart';
import 'package:flutter/material.dart';

abstract class AppStyls {
  static TextStyle styleBold25(BuildContext context) {
    return TextStyle(
        color: AppColors.kPrimiryColor3,
        fontFamily: AppFonst.amiriFont,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, fontSize: 25));
  }

  static TextStyle styleRegular25(BuildContext context) {
    return TextStyle(
        color: AppColors.kPrimiryColor,
        fontFamily: AppFonst.amiriFont,
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontSize(context, fontSize: 25));
  }

  static TextStyle styleRegular23(BuildContext context) {
    return TextStyle(
        color: AppColors.kPrimiryColor,
        fontFamily: AppFonst.ciroFont,
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontSize(context, fontSize: 23));
  }

  static TextStyle styleRegular23Quran(BuildContext context) {
    return TextStyle(
        color: AppColors.kPrimiryColor,
        fontFamily: AppFonst.amiriQuran,
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontSize(context, fontSize: 21));
  }

  static TextStyle styleRegular20(BuildContext context) {
    return TextStyle(
        color: AppColors.kPrimiryColor,
        fontFamily: AppFonst.amiriFont,
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontSize(context, fontSize: 20));
  }
}
