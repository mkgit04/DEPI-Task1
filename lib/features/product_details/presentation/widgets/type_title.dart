import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class TypeTitle extends StatelessWidget {
  const TypeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "النوع",
          style: GoogleFonts.cairo(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Container(
          // height: 26,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0XFFFFE9D9),
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            "إلزامي",
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
              color: Color(0XFFF55540),
            ),
          ),
        ),
      ],
    );
  }
}
