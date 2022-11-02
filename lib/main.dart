import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //int days = 1;
    //String name = "Flutter";
    //double days = 30;  prints 30.0 in screen
    //bool isFemale= true;
    //num days = 1;  for int, double both declaration together
    //var days = 1; // var is any datatype
    //const name = "Flutter"; //Constant
    //final pi = 3.14; // data is modifiable
    //difference between const and final is for ex we can add a element in list in final but not in const

    //bringvegetables(); //bringvegetables({int rupees = 100})
    //bringvegetables(rupees: 50); //bringvegetables({int rupees = 100})
    //bringvegetables(thaila: false);

    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(), Iska ek baar dekhna ye kya hota hai
      ),
      darkTheme: ThemeData(
        //this will work when themeMode is dark
        brightness: Brightness.dark, //this is overriding primaryswatch
        //primarySwatch: Colors.red,
      ),
      //initialRoute: "/home", //by default "/"
      routes: {
        // "/" -> this means home only so remove the home otherwise this will throw error
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }

  // bringvegetables({required bool thaila, int rupees = 100}) {
  //   //take cycle
  //   //go to market
  // }
}
