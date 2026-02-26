import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            top: 30,
            right: 15,
            left: 15,
            bottom: 50,
          ),

          child: Column(
            spacing: 10,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 10,
                  right: 10,
                  left: 10,
                  // bottom: 20,
                ),
                child: AppBar(),
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/cuate.png",
                width: double.infinity,
                // height: 200,
                fit: BoxFit.fitWidth,
              ),
              Column(
                spacing: 5,
                children: [
                  Text(
                    "سيتم توصيل طعامك خلال",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF686868),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "20/15 ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: "دقيقة",
                          style: TextStyle(color: Color(0XFFF55540)),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Divider(color: Color(0XFFCECECE), thickness: 1),
              Row(
                children: [
                  Text(
                    "معلومات الطلب",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              OrderSection(),
              Divider(color: Color(0XFFCECECE), thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "رقم التعريف بالطلب",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "#8456156",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "كود التحقق",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "1973",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "عدد العناصر",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: Container(
                      // width: 100,
                      padding: EdgeInsets.all(10),
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0XFFF55540),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        "تتبع الطلب",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // width: 100,
                      padding: EdgeInsets.all(10),
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Color(0XFFF55540), width: 1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        "إلغاء الطلب",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF55540),
                        ),
                      ),
                    ),
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

class OrderSection extends StatelessWidget {
  const OrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Container(
          width: 100.5,
          height: 100.5,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Color(0XFFD9D9D9),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Image.asset(
            "assets/images/spagetti.png",
            width: 100.5,
            height: 100.5,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "معكرونه بالصوص و قطع بانية حار",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
              Text(
                "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة",

                style: TextStyle(
                  height: 1.6,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "2.20 ج.م",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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

        Text(
          "تتبع الطلب ",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Image.asset("assets/images/notification.png", width: 24, height: 24),
      ],
    );
  }
}
