import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/page2Banner.png"),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0XFFE6E6E6)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        spacing: 15,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 63,
                            padding: EdgeInsets.all(2),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0XFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0XFF000000).withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              // border: Border.all(color: Color(0XFFE6E6E6)
                              // ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: Image.asset(
                                "assets/images/delicious.jpg",
                                fit: BoxFit.cover,
                                height: 81,
                              ),
                            ),
                          ),
                          Column(
                            spacing: 4,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                "اسم المطعم هنا",
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.notoKufiArabic(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                spacing: 5,
                                children: [
                                  Image.asset(
                                    "assets/images/burger_vector.png",
                                    width: 14,
                                    height: 12.33,
                                  ),
                                  Text(
                                    "طعام بحري ، مشويات ، اكلات سريعة",
                                    style: GoogleFonts.notoKufiArabic(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0XFF868686),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 5,
                                children: [
                                  Image.asset(
                                    "assets/images/star.png",
                                    width: 14,
                                    height: 14,
                                  ),
                                  Text(
                                    "5.0 (100+)",
                                    style: GoogleFonts.notoKufiArabic(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                      color: Color(0XFF000000),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                spacing: 5,
                                children: [
                                  Image.asset(
                                    "assets/images/truck.png",
                                    width: 14,
                                    height: 14,
                                  ),
                                  Text(
                                    "متاح التوصيل",

                                    style: GoogleFonts.notoKufiArabic(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color(0XFF868686),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Column(
                      spacing: 11,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/heart.png",
                          height: 24,
                          width: 24,
                        ),
                        Image.asset(
                          "assets/images/share.png",
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0XFFF55540), width: 1),
                      ),
                      child: Image.asset("assets/images/setting.png"),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0XFFF55540), width: 1),
                      ),
                      child: Text(
                        "🔥 الافضل",
                        style: GoogleFonts.notoKufiArabic(
                          color: Color(0XFFF55540),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0XFFE6E6E6), width: 1),
                      ),
                      child: Text(
                        "بيتزا",
                        style: GoogleFonts.notoKufiArabic(
                          color: Color(0XFF727272),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0XFFE6E6E6), width: 1),
                      ),
                      child: Text(
                        "مشويات",
                        style: GoogleFonts.notoKufiArabic(
                          color: Color(0XFF727272),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0XFFE6E6E6), width: 1),
                      ),
                      child: Text(
                        "حلويات",
                        style: GoogleFonts.notoKufiArabic(
                          color: Color(0XFF727272),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Color(0XFFE6E6E6), width: 1),
                      ),
                      child: Text(
                        "محاشي",
                        style: GoogleFonts.notoKufiArabic(
                          color: Color(0XFF727272),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                child: Row(
                  spacing: 5,
                  textDirection: TextDirection.rtl,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("🔥"),
                    Text(
                      "الأفضل",
                      style: GoogleFonts.notoKufiArabic(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 3,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 109.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFEEEEC),
                            ),
                            child: Image.asset(
                              "assets/images/chicken.png",
                              width: 170,
                              height: 109.5,
                            ),
                          ),
                          Text(
                            "معكرونه بالصوص و قطع بانية حار",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "2.20 د.ك",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0XFF868686),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 3,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            width: double.maxFinite,
                            height: 109.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFEEEEC),
                            ),
                            child: Image.asset(
                              "assets/images/pasta.png",
                              width: 170,
                              height: 109.5,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "معكرونه بالصوص و قطع بانية حار",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "2.20 د.ك",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0XFF868686),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 3,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            width: double.maxFinite,
                            clipBehavior: Clip.antiAlias,
                            height: 109.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFEEEEC),
                            ),
                            child: Image.asset(
                              "assets/images/egg.png",
                              width: 170,
                              height: 109.5,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "معكرونه بالصوص و قطع بانية حار",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "2.20 د.ك",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0XFF868686),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 3,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            width: double.maxFinite,
                            height: 109.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffFEEEEC),
                            ),
                            child: Image.asset(
                              "assets/images/pizza.png",
                              width: 170,
                              height: 109.5,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "معكرونه بالصوص و قطع بانية حار",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "2.20 د.ك",
                            style: GoogleFonts.notoKufiArabic(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0XFF868686),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                child: Row(
                  spacing: 5,
                  textDirection: TextDirection.rtl,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("🍕"),
                    Text(
                      "بيتزا",
                      style: GoogleFonts.notoKufiArabic(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 20),
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100.5,
                          height: 100.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            "assets/images/spagetti.png",
                            fit: BoxFit.cover,
                            // width: 100.5,
                            // height: 100.5,
                          ),
                        ),

                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "معكرونه بالصوص و قطع بانية حار",
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                                maxLines: 4,
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "2.20 د.ك",
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0XFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Divider(endIndent: 25, indent: 10),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 20),
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100.5,
                          height: 100.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            "assets/images/spagetti.png",
                            fit: BoxFit.cover,
                            // width: 100.5,
                            // height: 100.5,
                          ),
                        ),

                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "معكرونه بالصوص و قطع بانية حار",
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                                maxLines: 4,
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "2.20 د.ك",
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0XFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Divider(endIndent: 25, indent: 10),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 20),
                child: Column(
                  children: [
                    Row(
                      spacing: 10,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: 100.5,
                          height: 100.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            "assets/images/spagetti.png",
                            fit: BoxFit.cover,
                            // width: 100.5,
                            // height: 100.5,
                          ),
                        ),

                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "معكرونه بالصوص و قطع بانية حار",
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                                maxLines: 4,
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "2.20 د.ك",
                                style: GoogleFonts.notoKufiArabic(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0XFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              SizedBox(height: 2),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 56.12,
                decoration: BoxDecoration(
                  color: Color(0XFFF55540),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        spacing: 10,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0XFFFFE9D9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text("0"),
                          ),
                          Text(
                            "الإطلاع علي السلة",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "0.00 ج.م",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
