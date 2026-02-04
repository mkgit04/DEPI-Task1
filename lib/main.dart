import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1_flutter/page1.dart';

import 'page2.dart';

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
        textTheme: GoogleFonts.notoKufiArabicTextTheme(),
      ),
      home: const Page2(),
    );
  }
}
