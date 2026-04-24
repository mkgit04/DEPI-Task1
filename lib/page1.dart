import 'dart:math';

import 'package:dio/dio.dart' show Dio;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1_flutter/core/api/dio_consumer.dart';
import 'package:task1_flutter/features/product_list/presentation/product_list_page.dart';
import 'package:task1_flutter/features/users/cubit/users_cubit.dart';

import 'features/product_list/cubit/products_list_cubit.dart'
    show ProductsListCubit;
import 'widgets/my_location_card.dart';

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
              MyLocationWiget(),
              ElevatedButton(
                onPressed: () {
                  context.read<UserCubit>().addUser();
                },
                child: Text("Add User"),
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
                  RecommendationWidget(
                    image: "assets/images/burger.png",
                    title: "وجبات سريعة",
                    color: Color(0xffF55540),
                  ),

                  RecommendationWidget(
                    image: "assets/images/chicken.png",
                    title: "مشويات",
                    color: Color(0xffFCCAC4),
                  ),
                  RecommendationWidget(
                    image: "assets/images/seafood.png",
                    title: "مأكولات بحرية",
                    color: Color(0xff00A991),
                  ),
                  RecommendationWidget(
                    image: "assets/images/meat.png",
                    title: "لحوم",
                    color: Color(0xffB0E4DD),
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
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _FoodCard(
                      image: "assets/images/burger.png",
                      title: "بج بيرجر سبايسي",
                      price: 150,
                    ),
                  ),
                  Expanded(
                    child: _FoodCard(
                      image: "assets/images/seafood.png",
                      title: "بج بيرجر سبايسي",
                      price: 150,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}

class RecommendationWidget extends StatefulWidget {
  const RecommendationWidget({
    super.key,
    required this.image,
    required this.title,
    required this.color,
    this.duration = const Duration(milliseconds: 900),
    this.verticalOffset = 6,
  });
  final String image;
  final String title;
  final Color color;
  final Duration duration;
  final double verticalOffset;

  @override
  State<RecommendationWidget> createState() => _RecommendationWidgetState();
}

class _RecommendationWidgetState extends State<RecommendationWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _offsetAnimation;

  @override
  void initState() {
    super.initState();

    final random = Random(DateTime.now().microsecondsSinceEpoch);

    _controller = AnimationController(vsync: this, duration: widget.duration);
    _offsetAnimation = Tween<double>(
      begin: -widget.verticalOffset,
      end: widget.verticalOffset,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.value = random.nextDouble();
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _offsetAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _offsetAnimation.value),
          child: child,
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) =>
                    ProductsListCubit(api: DioConsumer(dio: Dio())),
                child: ProductListPage(),
              ),
            ),
          );
        },
        child: Column(
          spacing: 3,

          children: [
            Container(
              width: 80,
              height: 80,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: widget.color,
              ),
              child: Image.asset(widget.image, width: 72, height: 72),
            ),
            Text(
              widget.title,
              style: GoogleFonts.notoKufiArabic(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FoodCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;

  const _FoodCard({
    // super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Container(
          // width: 170,
          height: 109.5.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Color(0xffFEEEEC),
          ),
          child: Image.asset(image, width: 170.w, height: 109.5.h),
        ),
        Text(
          title,
          style: GoogleFonts.notoKufiArabic(
            fontWeight: FontWeight.w500,
            fontSize: 10.sp,
          ),
        ),
        Row(
          spacing: 5.sp,
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
                fontSize: 8.sp,
              ),
            ),
          ],
        ),
        Row(
          // spacing: 75,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.rtl,
          children: [
            Column(
              spacing: 5.sp,
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  spacing: 5.sp,
                  textDirection: TextDirection.rtl,
                  children: [
                    Image.asset(
                      "assets/images/star.png",
                      width: 13.95.w,
                      height: 12.27.h,
                    ),
                    Text(
                      "(+100) 5.0",
                      style: GoogleFonts.notoKufiArabic(
                        fontWeight: FontWeight.w300,
                        fontSize: 8.sp,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${price.truncate()} ج.م",
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.notoKufiArabic(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    color: Color(0xff868686),
                  ),
                ),
              ],
            ),
            Container(
              // width: 36.w,
              // height: 36.h,
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
                width: 20.w,
                height: 20.h,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
