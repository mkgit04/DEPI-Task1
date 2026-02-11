import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1_flutter/activity_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.notoKufiArabicTextTheme(),
      ),
      home: const Activity4(),
    );
  }
}
