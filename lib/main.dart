import 'package:booky_app_clean_arctect/Features/splash/presentation/views/splash_view.dart';
import 'package:booky_app_clean_arctect/constants.dart';
import 'package:booky_app_clean_arctect/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookyApp());
}

class BookyApp extends StatelessWidget {
  const BookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      // home: SplashView(),
    );
  }
}
