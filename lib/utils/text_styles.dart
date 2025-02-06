import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyles {
  static TextStyle get heading1 => GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
        color: AppColors.textColor,
      );

  static TextStyle get heading2 => GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: AppColors.textColor,
      );

  static TextStyle get bodyText1 => GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: AppColors.textColor,
      );

  static TextStyle get bodyText2 => GoogleFonts.roboto(
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
        color: AppColors.textColor,
      );
}
