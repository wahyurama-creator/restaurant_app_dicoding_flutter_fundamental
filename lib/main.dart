import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/common/style.dart';
import 'package:flutter_restaurant_app/data/model/restaurant.dart';
import 'package:flutter_restaurant_app/ui/detail/detail_page.dart';
import 'package:flutter_restaurant_app/ui/home/home_page.dart';
import 'package:flutter_restaurant_app/ui/onboarding/onboarding_page.dart';
import 'package:flutter_restaurant_app/ui/setting/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            textTheme: myTextTheme.apply(
              bodyColor: blackColor,
            ),
            elevation: 0.0,
            centerTitle: true),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            elevation: 3.0,
            enableFeedback: true,
            selectedItemColor: navigationColor,
            unselectedItemColor: unselectedNavigationColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: orangeColor,
            textStyle: TextStyle(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
        ),
      ),
      initialRoute: OnBoardingPage.routeName,
      routes: {
        OnBoardingPage.routeName: (context) => OnBoardingPage(),
        HomePage.routeName: (context) => HomePage(),
        DetailPage.reouteName: (context) => DetailPage(
            restaurant:
                ModalRoute.of(context)?.settings.arguments as Restaurant),
        SettingsPage.routeName: (context) => SettingsPage()
      },
    );
  }
}
