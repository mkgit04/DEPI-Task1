import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show MultiBlocProvider, BlocProvider;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:task1_flutter/features/home/presentation/home_page.dart';
import 'package:task1_flutter/features/product_details/cubit/product_cubit.dart';
import 'package:task1_flutter/features/activity_5/bloc/cart_bloc_controller.dart';

import 'features/activity_5/cubit/cart_cubit.dart' show CartCubit;

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<CartCubit>(create: (_) => CartCubit()),
        BlocProvider<CartBlocController>(create: (_) => CartBlocController()),
        BlocProvider<ProductCubit>(create: (_) => ProductCubit()),
      ],

      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Color(0XFFF55540)),
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.notoKufiArabicTextTheme(),
        ),
        home: child,
      ),
      child: HomePage(),
    );
  }
}
