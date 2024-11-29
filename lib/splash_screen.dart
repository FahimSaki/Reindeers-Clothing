import 'package:reindeers_clothing/pages/intro_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (context.mounted) {
          // Navigate to the intro page after a delay
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const IntroPage()),
          );
        }
      },
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 226, 227),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 170, height: 170),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  '℗ by Fahim Saki',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
