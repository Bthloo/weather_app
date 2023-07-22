import 'package:flutter/material.dart';
import 'package:weatherr_app/home/home_screen.dart';
import 'package:weatherr_app/home/splash_screen.dart';
import 'home/search_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Color(0xffFFFFFF)
          ),
          displaySmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF)
          ),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Color(0xFF0D47A1)
          ),
          titleTextStyle: TextStyle(
            color: Color(0xFF0D47A1),
            fontSize: 30,
            fontWeight: FontWeight.w500
          )
        ),
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0D47A1)),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        SearchScreen.routeName : (_) => SearchScreen(),
        HomeScreen.routeName : (_) => const HomeScreen()
      },
    );
  }
}