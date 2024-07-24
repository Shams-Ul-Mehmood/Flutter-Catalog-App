import 'package:catalog_app/screens/Home_Screen.dart';
import 'package:catalog_app/screens/Login_Screen.dart';
import 'package:catalog_app/utils/Our_Screens_Routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Catalog_App());
}

class Catalog_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
      title: "Catalog App",
      debugShowCheckedModeBanner: false,
      color: Colors.lightBlueAccent,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        // brightness: Brightness.light
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      home: LoginScreen(),
      // routes attribute use for pages or screens navigation
      initialRoute: "/",
      routes: {
        ScreensRoutes.loginRoute : (buildContext) => new LoginScreen(),
        ScreensRoutes.homeRoute : (buildContext) => HomeScreen(),
      },
    );
  }
}