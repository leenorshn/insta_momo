import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_momo/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta-momo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[100],
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          titleTextStyle: GoogleFonts.pacifico(
            fontSize: 28, color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          iconTheme:const IconThemeData(color: Colors.black,)
        )
      ),
      home: const MainScreen(),
    );
  }
}

