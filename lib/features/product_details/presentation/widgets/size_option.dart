import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class SizeOption extends StatelessWidget {
  final String title;
  final double price;
  final int value;
  final void Function(int)? onChanged;
  const SizeOption({
    super.key,
    required this.title,
    required this.price,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged!(value),
      child: Row(
        children: [
          Radio(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            onChanged: (i) {
              onChanged!(value);
            },
            groupValue: 0,
            backgroundColor: WidgetStatePropertyAll(Colors.white),
            activeColor: Color(0XFFF55540),
            side: BorderSide(color: Color(0XFFD9D9D9), width: 1.w),
          ),
          Text(
            title,
            style: GoogleFonts.cairo(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Spacer(),
          if (price != 0)
            Text(
              "$price د.ك",
              style: GoogleFonts.cairo(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
