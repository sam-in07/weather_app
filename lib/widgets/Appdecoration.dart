import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration gradientBox = BoxDecoration(
    gradient: const LinearGradient(
      begin: Alignment(0.50, 0.00),
      end: Alignment(0.09, 1.00),
      colors: [
        Color(0xFF3D2C8E),
        Color(0xB29D52AC),
      ],
    ),
    border: Border.all(
      color: const Color(0xFFF7CBFD),
    ),
    borderRadius: BorderRadius.circular(30),
    boxShadow: const [
      BoxShadow(
        color: Color(0x3F000000),
        blurRadius: 4,
        offset: Offset(0, 1),
        spreadRadius: 0,
      ),
    ],
  );
}
