import 'package:reindeers_clothing/models/shop.dart';
import 'package:reindeers_clothing/pages/cart_page.dart';
import 'package:reindeers_clothing/pages/intro_page.dart';
import 'package:reindeers_clothing/pages/shop_page.dart';
// import 'package:reindeers_clothing/splash_screen.dart';
import 'package:reindeers_clothing/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        // '/splash_screen': (context) => const SplashScreen(),
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
