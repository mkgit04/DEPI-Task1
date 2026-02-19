import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1_flutter/activity_4.dart';
import 'package:task1_flutter/activity_6.dart';
import 'package:task1_flutter/features/activity_5/presentation/activity_5.dart';
import 'package:task1_flutter/features/home/presentation/home_page.dart';
import 'package:task1_flutter/page1.dart';
import 'package:task1_flutter/page2.dart';
import 'package:task1_flutter/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.notoKufiArabicTextTheme(),
        ),
        home: child,
      ),
      child: HomePage(),
    );
  }
}
