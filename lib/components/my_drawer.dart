import 'package:flutter/material.dart';
import 'package:myshop/components/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(42),
                  child: Center(
                    child: Icon(
                      Icons.shopping_bag,
                      size: 72,
                      color: Theme
                          .of(context)
                          .colorScheme
                          .inversePrimary,
                    ),
                  )),

              SizedBox(height: 25),

              DrawerTile(
                text: 'Shop',
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/shop_page');
                },
              ),
              DrawerTile(
                  text: 'Cart',
                  icon: Icons.shopping_cart,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/cart_page'
                    );
                  }
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: DrawerTile(
                text: 'Exit',
                icon: Icons.logout,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/intro_page');
                }
            ),
          ),
        ],
      ),
    );
  }
}
