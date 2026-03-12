import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:task1_flutter/core/db/sqldb.dart';
import 'package:task1_flutter/features/favourites/cubit/favourites_cubit.dart';
import 'package:task1_flutter/features/favourites/presentation/favourites_page.dart';
import 'package:task1_flutter/features/profile/presentation/profile_page.dart';
import 'package:task1_flutter/page1.dart';
import 'package:task1_flutter/features/page2/presentation/page2.dart';
import 'package:task1_flutter/page3.dart';

import '../../../activity_4.dart' show Activity4;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> _tabImages = [
    'assets/images/home.png',
    'assets/images/heart.png',
    'assets/images/bag-happy.png',
    'assets/images/frame.png',
  ];
  final List<String> _tabActiveImages = [
    'assets/images/home-fill.png',
    'assets/images/heart-fill.png',
    'assets/images/bag-happy-fill.png',
    'assets/images/profile_fill.png',
  ];

  final List<Widget> _pages = [
    Page1(),
    FavouritesPage(),
    Page2(),
    // Page3(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // Sqldb sqldb = Sqldb();
    // sqldb.deleteData("DELETE FROM favourites", []);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(index: _selectedIndex, children: _pages),
        floatingActionButton: CustomFAB(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: Colors.white,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTab(0),
                _buildTab(1),
                const SizedBox(width: 60),
                _buildTab(2),
                _buildTab(3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab(int index) {
    final isSelected = _selectedIndex == index;

    return InkWell(
      onTap: _selectedIndex == index
          ? null
          : () => setState(() => _selectedIndex = index),
      borderRadius: BorderRadius.circular(50),

      // behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              isSelected ? _tabActiveImages[index] : _tabImages[index],
              width: 24,
              height: 24,
              colorBlendMode: BlendMode.srcIn,
            ),
            if (isSelected) const SizedBox(height: 5),
            if (isSelected)
              Container(
                width: 12,
                height: 2,
                decoration: BoxDecoration(
                  color: const Color(0xFFE94560),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFF8964),
                      blurRadius: 16,
                      spreadRadius: 2,
                      offset: Offset(0, -12),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color(0xFFF55540),
      shape: const CircleBorder(),
      elevation: 8,
      child: Image.asset(
        "assets/images/shopping-cart.png",
        width: 24,
        height: 24,
        colorBlendMode: BlendMode.srcIn,
      ),
    );
  }
}
