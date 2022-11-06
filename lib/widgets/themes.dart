import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 17),
        ),
      );
  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );
}

// class MyTheme {
//   static ThemeData lightTheme(BuildContext context) => ThemeData(
//         primarySwatch: Colors.deepPurple,
//         fontFamily: GoogleFonts.lato().fontFamily,
//         appBarTheme: const AppBarTheme(
//           color: Colors.white,
//           elevation: 0,
//           iconTheme: IconThemeData(color: Colors.black),
//           titleTextStyle: TextStyle(color: Colors.black, fontSize: 17),
//           textTheme: Theme.of(context).textTheme, //vaise toh ab ye deprecated ho gya hai par isliye likh rhi hu kaise context ke saath class banegi
//         ),
//       );
// }
