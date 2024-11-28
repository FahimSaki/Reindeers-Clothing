import 'package:ecommerce_ui/components/my_drawer.dart';
import 'package:ecommerce_ui/components/my_product_tile.dart';
import 'package:ecommerce_ui/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Shop Page'),
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(height: 25),

            // shop subtitle
            Center(
              child: Text(
                'Pick from a selected list of premium products',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            // product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  // get individual items from the shop
                  final product = products[index];

                  // return as product tile UI
                  return MyProductTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
