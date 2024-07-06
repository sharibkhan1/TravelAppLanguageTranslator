import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelappui/HomePage/myhome_page.dart';
import 'package:travelappui/Model/provider_model.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/Navbar/navbar.dart';
// main.dart


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // Initialize the translation provider and make it available to all widgets
    return ChangeNotifierProvider(
      create: (BuildContext context) =>TranslationProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.playfairDisplayTextTheme(),
        ),
        home: const Navbar(),
      ),
    );
  }
}