import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity4 extends StatefulWidget {
  const Activity4({super.key});

  @override
  State<Activity4> createState() => _Activity4State();
}

class _Activity4State extends State<Activity4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => ActivityCard(),
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            offset: Offset(0.0, 4), //(x,y)
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 5,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  "assets/images/avatar3.png",
                  // width: 60,
                  // height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "كود الطلب: #545555",
                    style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "اسم المطعم",
                    style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFF55540),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Image.asset(
                        "assets/images/clock.png",
                        width: 18,
                        height: 18,
                      ),
                      Text(
                        "15/1/2024 الساعه 12:30 ص",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF939393),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: Container(
                  height: 47,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0XFFF55540),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    "موافق",
                    style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 47,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: Color(0XFF7F7F7F)),
                  ),
                  child: Text(
                    "رفض",
                    style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF7F7F7F),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
