import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocConsumer, ReadContext, WatchContext;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:task1_flutter/core/db/sqldb.dart';

import '../cubit/favourites_cubit.dart' show FavouritesCubit;
import '../cubit/favourites_state.dart'
    show FavouritesLoading, FavouritesState, FavouritesEmpty;

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

List favourites = [];

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  void initState() {
    context.read<FavouritesCubit>().getFavourites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 40,
          right: 20,
          left: 20,
          bottom: 30,
        ),
        child: Column(
          children: [
            _UpperSection(),
            const SizedBox(height: 25),

            BlocConsumer<FavouritesCubit, FavouritesState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                final cubit = context.read<FavouritesCubit>();
                log(state.toString());
                return Column(
                  children: [
                    (state is FavouritesLoading)
                        ? const CircularProgressIndicator()
                        : (state is FavouritesEmpty)
                        ? Text(
                            "لا توجد منتجات في المفضلة",
                            style: GoogleFonts.cairo(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          )
                        : ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: cubit.favourites.length,

                            itemBuilder: (context, index) => FavouriteCard(
                              id: cubit.favourites[index]["id"],
                              title: cubit.favourites[index]["name"],
                              image: cubit.favourites[index]["image"],
                              price: cubit.favourites[index]["price"],
                            ),
                          ),

                    // FavouriteCard(
                    //     title: "شاورما",
                    //     image: "assets/images/egg.png",
                    //     price: 40.0,
                    //     onUnFavorite: () {},
                    //   ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    this.onUnFavorite,
    super.key,
  });
  final int id;
  final String title;
  final String image;
  final double price;
  final VoidCallback? onUnFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0.0, 4), //(x,y)
            blurRadius: 9,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        spacing: 10,
        children: [
          Container(
            width: 80,
            height: 65,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Expanded(
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.cairo(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "اسم المطعم",
                  style: GoogleFonts.cairo(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFFA5A5A5),
                  ),
                ),
                Row(
                  spacing: 13,
                  children: [
                    Text(
                      "\$$price",
                      style: GoogleFonts.cairo(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Image.asset(
                          "assets/images/star-primary.png",
                          width: 14,
                          height: 14,
                        ),
                        Text(
                          "0.0 (0)",
                          style: GoogleFonts.cairo(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFFA5A5A5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Spacer(),
          Column(
            spacing: 11,
            children: [
              InkWell(
                onTap: () async => await context
                    .read<FavouritesCubit>()
                    .removeFromFavourite(id),
                child: Image.asset(
                  "assets/images/heart-fill.png",
                  width: 24,
                  height: 24,
                ),
              ),
              Container(
                width: 24,
                height: 24,
                // padding: EdgeInsets.all(2),
                alignment: AlignmentGeometry.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0.0, 4), //(x,y)
                      blurRadius: 9,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Icon(Icons.add, color: Color(0XFFF55540), size: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _UpperSection extends StatelessWidget {
  const _UpperSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 5,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 9, vertical: 7),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFF55540),
            ),
            child: Image.asset("assets/images/back_arrow.png"),
          ),
        ),
        Text(
          "المفضلة",
          style: GoogleFonts.notoKufiArabic(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Image.asset("assets/images/notification.png", width: 24, height: 24),
      ],
    );
  }
}
