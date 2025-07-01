import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();
  static const Color backgroundColor = Color(0xffe2e2e2);

  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);

  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = CustomColors.inverseTextColor.withValues(alpha: 0.1);

  static const Color primaryColor = Color(0xff607d8b);
  static const Color secondaryColor = Color(0xffffcb2d);
  static const Color accent = Color(0xff949ba2);

  static const Color textColor = Colors.black;
  static const Color textSecondaryColor = Color(0xFF535353);
  static const Color textLightColor = Color(0xFFACACAC);
  static const Color inverseTextColor = Colors.white;

  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecondary = Color(0xff6c757d);
  static const Color buttonDisabled = Color(0xffc4c4c4);

  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecondary = Color(0xffe6e6e6);

  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);

  // Neutral shades
  static const Color black = Color(0xff232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);

  static const primaryGradientColor = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xffffa53e), Color(0xffff7643)]
  );
}