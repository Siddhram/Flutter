import 'package:flutter/material.dart';
import 'package:flutter_application_3/loginpage.dart';
import 'package:flutter_application_3/assets/images/pages/home_page.dart';
// import '';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // var b = "shree ram";

    // int a = 10;
    // String b = "siddharam$a";
    return MaterialApp(
      // home: Home_page(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        // "/Login": (context) => Login(),
        "/": (context) => Loginpage(),

        "/Home": (context) => Home_page(),
      },
      // lighttheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
