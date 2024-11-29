import 'package:ecommerce_ui/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          children: [
            // Centered top content
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo
                  Image.asset('assets/images/logo.png',
                      width: 170, height: 170),

                  const SizedBox(height: 5),

                  // title
                  const Text(
                    'Clothing',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // subtitle
                  Text(
                    'Premium Quality Products',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),

                  const SizedBox(height: 25),

                  // buttons
                  MyButton(
                    onTap: () => Navigator.pushNamed(context, '/shop_page'),
                    child: const Icon(Icons.forward),
                  ),
                ],
              ),
            ),

            // Bottom content
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '℗ by Fahim Saki',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
