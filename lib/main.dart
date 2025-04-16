import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'locator_tab_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'food Restorant Desing',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xf7f7f7f7),
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.lato(textStyle: TextStyle(fontSize: 16,color: Color(0x9CD4D4D4),fontWeight: FontWeight.w600)),
          bodyLarge: GoogleFonts.lato(textStyle: TextStyle(fontSize: 19,color: Color(0xB5FF8B00),fontWeight: FontWeight.w700)),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xB5FF8B00),
            primary: Color(0xB5FF8B00),
            secondary: Color(0x9CD4D4D4)
        ),
      ),
      home: const LocatorTabsPages(),
    );
  }
}