import 'package:flutter/material.dart';
import 'package:myshop/model/shop.dart';
import 'package:myshop/pages/cart_page.dart';
import 'package:myshop/pages/shop_page.dart';
import 'package:myshop/theme/theme.dart';
import 'package:provider/provider.dart';

import 'pages/intro_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      darkTheme: darkmode,
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopPage(),
        '/cart_page': (context) => CartPage()
      },
    );
  }
}
