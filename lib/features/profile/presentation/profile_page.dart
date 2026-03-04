import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<Map> profileTiles = [
    {
      "title": "تعديل حسابي",
      "icon": "assets/images/profile_fill.png",
      "isSelected": true,
    },
    {
      "title": "دعوة صديق",
      "icon": "assets/images/profile-2user.png",
      "isSelected": false,
    },
    {
      "title": "عن التطبيق و الجوائز",
      "icon": "assets/images/clipboard-tick.png",
      "isSelected": false,
    },
    {
      "title": "شروط الاستخدام",
      "icon": "assets/images/task.png",
      "isSelected": false,
    },
    {
      "title": "حذف حساب",
      "icon": "assets/images/profile-delete.png",
      "isSelected": false,
    },
    {
      "title": "تسجيل الخروج",
      "icon": "assets/images/logout.png",
      "isSelected": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Material(
        color: Colors.white,

        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              children: [
                Text(
                  "حسابي",
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 25.h),
                ProfilePhotoSection(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    spacing: 5,
                    children: List.generate(
                      profileTiles.length,
                      (index) => ProfileTile(
                        title: profileTiles[index]["title"],
                        icon: profileTiles[index]["icon"],
                        isSelected: profileTiles[index]["isSelected"],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
  final String title;
  final String icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: isSelected ? Color(0XFFFEEEEC) : Colors.transparent,
      ),
      child: Row(
        spacing: 10,
        children: [
          Image.asset(icon, width: 24, height: 24),
          Text(
            title,
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

class ProfilePhotoSection extends StatelessWidget {
  const ProfilePhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 133,
      height: 133,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        border: Border.all(width: 1, color: Color(0XFFFEEEEC)),
        color: Colors.grey.shade100,
      ),
      child: Stack(
        children: [
          Image.asset("assets/images/avatar1.png"),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
              ),

              icon: Image.asset(
                "assets/images/camera.png",

                width: 21.6,
                height: 21.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
