import 'package:ecommerce_ui/pages/intro_page.dart';
import 'package:ecommerce_ui/pages/shop_page.dart';
import 'package:ecommerce_ui/splash_screen.dart';
import 'package:ecommerce_ui/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: lightMode,
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
      },
    );
  }
}
