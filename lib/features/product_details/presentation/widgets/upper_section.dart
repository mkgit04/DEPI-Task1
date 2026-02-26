import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:task1_flutter/features/product_details/cubit/product_cubit.dart';

class UpperSection extends StatelessWidget {
  final String image;
  final BoxFit fit;
  const UpperSection({super.key, required this.image, required this.fit});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 253.h,
          decoration: BoxDecoration(color: Color(0XFFFEEEEC)),
          child: Image.asset(image, fit: fit),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 5,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Future.delayed(const Duration(milliseconds: 100), () {
                    context.read<ProductCubit>().reset();
                  });
                },
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0XFFF55540),
                  ),
                  child: Image.asset(
                    "assets/images/back_arrow.png",
                    width: 6.w,
                    height: 12.h,
                  ),
                ),
              ),

              Image.asset(
                "assets/images/notification.png",
                width: 24.w,
                height: 24.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
