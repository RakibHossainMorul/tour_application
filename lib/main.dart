import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_application/const/app_colors.dart';
import 'package:tour_application/const/app_string.dart';
import 'package:tour_application/ui/route/route.dart';
import 'package:tour_application/ui/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(420, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: appString.appName,
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(
                Theme.of(context).textTheme.apply(),
              ),
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: appColors.getScaffoldColor,
            ),
            initialRoute: splashScreenRoute,
            getPages: pages,
            home: SplashScreen(),
          );
        });
  }
}
