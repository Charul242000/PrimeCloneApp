import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {

  static ThemeData  darkTheme(BuildContext context)=>ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: Color(0xFF1C1917),
      buttonColor: lightBluishColor,
      accentColor: Colors.black,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),

          textTheme: Theme.of(context).textTheme.copyWith(
              headline6: context.textTheme.headline6.copyWith(color: Colors.white))

      ));
  //colors
  static Color creamColor=Color(0xfff5f5f5);
  static Color darkBluishColor= Color(0xff403b58);
  static Color darkCreamColor= Color(0xFF1C1917);
  static Color lightBluishColor=Vx.indigo500;
}