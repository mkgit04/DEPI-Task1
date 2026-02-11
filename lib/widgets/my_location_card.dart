import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLocationWiget extends StatelessWidget {
  const MyLocationWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/bell.png", width: 32, height: 32),
        Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              Row(
                spacing: 5,
                children: [
                  Text(
                    "الموقع الحالي",
                    style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Image.asset(
                    "assets/images/arrow.png",
                    width: 10.08,
                    height: 10,
                  ),
                ],
              ),
              Text(
                "19 الشيخ احمد الصاوي ، مدينة نصر",
                style: GoogleFonts.notoKufiArabic(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff515151),
                  fontSize: 12,
                ),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
        Image.asset("assets/images/avatar.png", width: 60, height: 60),
      ],
    );
  }
}
