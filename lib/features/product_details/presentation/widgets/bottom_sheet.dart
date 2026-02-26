import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show WatchContext;
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;
import 'package:task1_flutter/features/product_details/cubit/product_cubit.dart'
    show ProductCubit;

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 105.5.h,
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
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 48,

            decoration: BoxDecoration(
              color: Color(0XFFF55540),
              // color: Color(0XFFF55540),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    spacing: 10.sp,
                    children: [
                      Container(
                        width: 29.w,
                        height: 30.h,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(2.5.r),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 233, 217, 0.3),
                          // color: Color(0XFFFFE9D9),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            context.watch<ProductCubit>().quantity.toString(),
                            style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,

                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "إضافة إلى السلة",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${context.watch<ProductCubit>().total} ج.م",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
