import 'package:contact_app/screens/home/bottom_nav_bar_screen.dart';
import 'package:contact_app/screens/home/home_screen.dart';
import 'package:contact_app/screens/home/home_screen_full.dart';
import 'package:flutter/material.dart';

import 'core/utils/App_routes.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.routeName,
      routes: {
        AppRoutes.routeName: (context) => HomeScreen(),
        AppRoutes.bottomNavBarScreenRouteName:(context) => BottomNavBarScreen(),
        AppRoutes.homeScreenFull:(context) => HomeScreenFull(),
      },
    );
  }
}
