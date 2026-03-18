import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;

class HorizontalProductTile extends StatelessWidget {
  const HorizontalProductTile({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  final String title;
  final String description;
  final String price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.5,
      child: Row(
        spacing: 14,
        children: [
          Container(
            height: 100.5,
            width: 100.5,
            decoration: BoxDecoration(
              color: Color(0xffFEEEEC),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Image.network(
              image,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                  ? child
                  : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircularProgressIndicator(
                        color: Color(0xffE94560),
                      ),
                    ),
            ),
            // Image.asset("assets/images/burger.png", fit: BoxFit.cover),
          ),
          Expanded(
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Text(
                  description,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 7.sp,

                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Text(
                  "$price L.E",
                  // "150 ج.م",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Color(0xff868686),
                    fontWeight: FontWeight.w500,
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
