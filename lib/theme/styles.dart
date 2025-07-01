import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyles {
  static TextStyle appstyle(double size, Color clr, FontWeight fw) {
    return GoogleFonts.poppins(fontSize: size, color: clr, fontWeight: fw);
  }

  static final BoxShadow verticalShadow = BoxShadow(
      color: Colors.grey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );

  static final BoxShadow horizontalShadow = BoxShadow(
      color: Colors.grey.withValues(alpha: 0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );

  static TextStyle appstyleWithHeight(double size, Color clr, FontWeight fw, double ht) {
    return GoogleFonts.poppins(
        fontSize: size, color: clr, fontWeight: fw, height: ht);
  }

  static OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.grey),
    );
  }
}