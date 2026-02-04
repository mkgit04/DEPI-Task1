import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // spacing: 20,
            children: [
              Row(
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
                  Image.asset(
                    "assets/images/avatar.png",
                    width: 60,
                    height: 60,
                  ),
                ],
              ),

              Container(
                width: double.infinity, // 350
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(width: 1, color: Color(0xffF55540)),
                ),
                child: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.max,
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/search.png",
                      width: 24,
                      height: 24,
                    ),
                    Text(
                      "تبحث عن وجبة معينة؟",
                      style: TextStyle(color: Color(0xffFCCAC4)),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 3,

                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffF55540),
                        ),
                        child: Image.asset(
                          "assets/images/burger.png",
                          width: 72,
                          height: 72,
                        ),
                      ),
                      Text(
                        "وجبات سريعة",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,

                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(3),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffFCCAC4),
                        ),
                        child: Image.asset(
                          "assets/images/chicken.png",
                          width: 72,
                          height: 72,
                        ),
                      ),
                      Text(
                        "مشويات",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,

                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(3),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff00A991),
                        ),
                        child: Image.asset(
                          "assets/images/seafood.png",
                          width: 72,
                          height: 72,
                        ),
                      ),
                      Text(
                        "مأكولات بحرية",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        padding: EdgeInsets.all(3),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffB0E4DD),
                        ),
                        child: Image.asset(
                          "assets/images/meat.png",
                          width: 72,
                          height: 72,
                        ),
                      ),
                      Text(
                        "لحوم",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              Image.asset("assets/images/poster.png", fit: BoxFit.contain),
              SizedBox(height: 20),

              Row(
                spacing: 5,
                textDirection: TextDirection.rtl,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("🔥"),
                  Text(
                    "الأفضل خلال اليوم",
                    style: GoogleFonts.notoKufiArabic(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 3,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      Container(
                        width: 170,
                        height: 109.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffFEEEEC),
                        ),
                        child: Image.asset(
                          "assets/images/burger.png",
                          width: 170,
                          height: 109.5,
                        ),
                      ),
                      Text(
                        "بج بيرجر سبايسي",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                      Row(
                        spacing: 5,
                        textDirection: TextDirection.rtl,
                        children: [
                          Image.asset(
                            "assets/images/burger_vector.png",
                            width: 13.95,
                            height: 12.27,
                          ),
                          Text(
                            "وجبات سريعة",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 75,
                        textDirection: TextDirection.rtl,
                        children: [
                          Column(
                            spacing: 5,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                spacing: 5,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Image.asset(
                                    "assets/images/star.png",
                                    width: 13.95,
                                    height: 12.27,
                                  ),
                                  Text(
                                    "(+100) 5.0",
                                    style: GoogleFonts.notoKufiArabic(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "150 ج.م",
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xff868686),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 36,
                            height: 36,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xffF55540),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                            child: Image.asset(
                              "assets/images/cart.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    spacing: 3,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      Container(
                        width: 170,
                        height: 109.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffFEEEEC),
                        ),
                        child: Image.asset(
                          "assets/images/seafood.png",
                          width: 170,
                          height: 109.5,
                        ),
                      ),
                      Text(
                        "بج بيرجر سبايسي",
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                      Row(
                        spacing: 5,
                        textDirection: TextDirection.rtl,
                        children: [
                          Image.asset(
                            "assets/images/burger_vector.png",
                            width: 13.95,
                            height: 12.27,
                          ),
                          Text(
                            "وجبات سريعة",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 75,
                        textDirection: TextDirection.rtl,
                        children: [
                          Column(
                            spacing: 5,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                spacing: 5,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Image.asset(
                                    "assets/images/star.png",
                                    width: 13.95,
                                    height: 12.27,
                                  ),
                                  Text(
                                    "(+100) 5.0",
                                    style: GoogleFonts.notoKufiArabic(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 8,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "150 ج.م",
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Color(0xff868686),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 36,
                            height: 36,
                            padding: EdgeInsets.all(8),

                            decoration: BoxDecoration(
                              color: Color(0xffF55540),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                            child: Image.asset(
                              "assets/images/cart.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
