import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activity6 extends StatelessWidget {
  const Activity6({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpperSection(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "معكرونه بالصوص و قطع بانية حار",
                      style: GoogleFonts.cairo(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.",
                      style: GoogleFonts.cairo(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2.20 ج.م",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                offset: Offset(0.0, 2), //(x,y)
                                blurRadius: 9,
                                spreadRadius: 0,
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Row(
                            spacing: 16,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 24,
                                color: Color(0XFFD2B080),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.add,
                                size: 24,
                                color: Color(0XFFF55540),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 5,
                      color: Color(0XFFD9D9D9).withAlpha(50),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الحجم",
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          // height: 26,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XFFFFE9D9),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "إلزامي",
                            style: GoogleFonts.cairo(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFF55540),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                              side: BorderSide(
                                color: Color(0XFFD9D9D9),
                                width: 1,
                              ),
                            ),
                            Text(
                              "سنجل",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.50 د.ك",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,

                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                              side: BorderSide(
                                color: Color(0XFFD9D9D9),
                                width: 1,
                              ),
                            ),
                            Text(
                              "سنجل",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.50 د.ك",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 5,
                      color: Color(0XFFD9D9D9).withAlpha(50),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الإضافات",
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          // height: 26,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XFFFFE9D9),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "إختياري",
                            style: GoogleFonts.cairo(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFF55540),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                              side: BorderSide(
                                color: Color(0XFFD9D9D9),
                                width: 1,
                              ),
                            ),
                            Text(
                              "سلطة",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.00 د.ك",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,

                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                              side: BorderSide(
                                color: Color(0XFFD9D9D9),
                                width: 1,
                              ),
                            ),
                            Text(
                              "حار",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.00 د.ك",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,

                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.white,
                              ),
                              side: BorderSide(
                                color: Color(0XFFD9D9D9),
                                width: 1,
                              ),
                            ),
                            Text(
                              "عادي",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0.00 د.ك",
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "النوع",
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          // height: 26,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0XFFFFE9D9),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "إلزامي",
                            style: GoogleFonts.cairo(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFF55540),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomSheet(),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 105.5,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0.0, -4), //(x,y)
            blurRadius: 9,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            height: 48,

            decoration: BoxDecoration(
              color: Color(0XFFF55540),
              // color: Color(0XFFF55540),
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
                          color: Color(0XFFfbc0b6),
                          // color: Color(0XFFFFE9D9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,

                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        "إضفة إلى السلة",
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
                  "150 ج.م",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 253,
          decoration: BoxDecoration(color: Color(0XFFFEEEEC)),
          child: Image.asset("assets/images/chicken.png"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 5,
            children: [
              Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFF55540),
                ),
                child: Image.asset(
                  "assets/images/back_arrow.png",
                  width: 6,
                  height: 12,
                ),
              ),

              Image.asset(
                "assets/images/notification.png",
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
