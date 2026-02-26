import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task1_flutter/features/activity_5/bloc/cart_bloc_controller.dart';
import 'package:task1_flutter/features/activity_5/bloc/cart_bloc_event.dart';

class Activity5 extends StatefulWidget {
  const Activity5({super.key});

  @override
  State<Activity5> createState() => _Activity5State();
}

class _Activity5State extends State<Activity5> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Column(
                spacing: 20,
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
                  FoodSection(),
                  PricingSection(),
                ],
              ),
            ),
            Spacer(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 7,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "ملخص الدفع",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "المجموع الفرعي",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            Text(
              "2.00 ج.م",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "توصيل",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            Text(
              "0.30 ج.م",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "المبلغ الإجمالي",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
            Text(
              "2.60 ج.م",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 133,
      padding: EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 30),
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
        // borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "الإجمالي:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFF55540),
                ),
              ),
              Text(
                // "\$${(context.watch<CartCubit>().price * context.watch<CartCubit>().itemCounter).toStringAsFixed(2)}",
                "\$${(context.watch<CartBlocController>().totalPrice).toStringAsFixed(2)}",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFF55540),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFF55540),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                  onPressed: () {},
                  child: Text(
                    "إتمام عملية الشراء",
                    style: GoogleFonts.cairo(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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

class FoodSection extends StatelessWidget {
  const FoodSection({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2.20 ج.م",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
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
                        InkWell(
                          // onTap: () => context.read<CartCubit>().removeItem(),
                          onTap: () => context.read<CartBlocController>().add(
                            CounterDecrement(),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 24,
                            // color: context.read<CartCubit>().itemCounter == 0
                            color:
                                context
                                        .read<CartBlocController>()
                                        .itemCounter ==
                                    0
                                ? Color(0XFFD2B080)
                                : Color(0XFFF55540),
                          ),
                        ),
                        Text(
                          // context.watch<CartCubit>().itemCounter.toString(),
                          context
                              .watch<CartBlocController>()
                              .itemCounter
                              .toString(),
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        InkWell(
                          // onTap: () => context.read<CartCubit>().addItem(),
                          onTap: () => context.read<CartBlocController>().add(
                            CounterIncrement(),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 24,
                            color: Color(0XFFF55540),
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
          "عربة التسوق",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Image.asset("assets/images/notification.png", width: 24, height: 24),
      ],
    );
  }
}
