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
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          // get individual items from the shop
          final product = products[index];

          // return as product tile UI
          return MyProductTile(product: product);
        },
      ),
    );
  }
}
