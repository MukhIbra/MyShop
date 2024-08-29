import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/my_drawer.dart';
import '../components/my_product.dart';
import '../model/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addToCart() {

  }

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().products;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shop Page'),
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return MyProduct(
                  product: products[index],
                  onPressed: () => addToCart,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
