import 'package:flutter/material.dart';
import 'package:flutter_carpool_app/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              GoogleFonts.lexendDecaTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
