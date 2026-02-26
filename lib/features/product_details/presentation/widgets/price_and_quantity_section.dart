import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show WatchContext, ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

import '../../cubit/product_cubit.dart' show ProductCubit;

class PriceAndQuantitySection extends StatelessWidget {
  const PriceAndQuantitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${(context.watch<ProductCubit>().price).toStringAsFixed(2)} ج.م",
          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        ),
        Container(
          height: 30,
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
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
                onTap: () {
                  context.read<ProductCubit>().removeItem();
                },
                child: Icon(
                  Icons.remove,
                  size: 24.sp,
                  color: context.watch<ProductCubit>().quantity != 1
                      ? Color(0XFFF55540)
                      : Color(0XFFD2B080),
                ),
              ),
              Text(
                context.watch<ProductCubit>().quantity.toString(),
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<ProductCubit>().addItem();
                },
                child: Icon(Icons.add, size: 24.sp, color: Color(0XFFF55540)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
