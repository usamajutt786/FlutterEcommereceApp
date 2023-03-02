import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usama/pages/home.dart';
import 'package:usama/pages/login.dart';
import 'package:usama/utils/routes.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //filhall ham iskocomment kar rahy han routes ko samjany k liy
      // home: homepage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          //primaryTextTheme: GoogleFonts.latoTextTheme(),
          brightness: Brightness.dark),
      //initial ye btata ha k jab app open ho gi to konsa page
      // pehly aye ga iss liy homepage likha ha ham ny
      // iskao define  b kia huwa ha
      initialRoute: MyRoutes.loginPage,
      routes: {
        // "/": (context) => LoginPage(),    isko ham ny comment iss liy kia k ham sari development ab hame par karin gy so
        //home ko by default rakh lety han
        MyRoutes.homepage: (context) => homepage(),
        MyRoutes.loginPage: (context) => LoginPage(),
      },
    );
  }
}
