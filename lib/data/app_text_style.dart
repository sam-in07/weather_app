import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Add this line

class AppTextstyle {
  static const textStyle12BlackW500 = TextStyle(
    color: Colors.black, // Now Colors.white will be recognized
    fontSize : 12,
    fontFamily: 'Poppins',
    fontWeight : FontWeight.w500,
  );
 /*  static const textStyle12WhiteW500 = TextStyle(
    color: Colors.white ,// Now Colors.white will be recognized
    fontSize : 12,
    fontFamily: 'Poppins',
    fontWeight : FontWeight.w500,
  ); */
 static  TextStyle textStyle12WhiteW500 = GoogleFonts.inter(
   fontSize: 14 ,
   color: Colors.white,
   fontWeight: FontWeight.w500,
 );
 static  TextStyle textStyle52WhiteW700 = GoogleFonts.raleway(
   fontSize: 52 ,
   color: Color(0xff202020),
   fontWeight: FontWeight.w700,
 );
 static  TextStyle textStyle19WhiteW300 = GoogleFonts.nunitoSans(
   fontSize: 19 ,
   color: Color(0xff202020),
   fontWeight: FontWeight.w300,
 );
 static  TextStyle textStyle22WideW300 = GoogleFonts.nunitoSans(
   fontSize: 22 ,
   color: Color(0xfff3f3f3),
   fontWeight: FontWeight.w300,
 );
 static  TextStyle textStyle22orrageW300 = GoogleFonts.nunitoSans(
   fontSize: 22 ,
   color: Color(0xffd1610c),
   fontWeight: FontWeight.w300,
 );
 static  TextStyle textStyle64yellowW700 = GoogleFonts.poppins(
   fontSize: 64 ,
   color: Color(0xffddb130),
   fontWeight: FontWeight.w700,
 );
 static  TextStyle textStyle64whiteW700 = GoogleFonts.poppins(
   fontSize: 64 ,
   color: Color(0xffffffff),
   fontWeight: FontWeight.w700,
 );
 static  TextStyle textStyle64whiteW500 = GoogleFonts.poppins(
   fontSize: 64,
   color: const Color(0xffffffff),
   fontWeight: FontWeight.w500,
   height: 0.46,
   letterSpacing: 0.47,
 );
  static TextStyle textStyle24whiteW400 = GoogleFonts.poppins(
    fontSize: 24,
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w400,
    height: 1.24,
    letterSpacing: 0.47,
  );
  static TextStyle textStyle20whiteW600 = GoogleFonts.openSans(
    fontSize: 20,
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w600,
    height: 1.49,
    letterSpacing: 0.47,
  );




}