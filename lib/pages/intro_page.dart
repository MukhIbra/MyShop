import 'package:flutter/material.dart';

import '../components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 10),
            Text(
              'DG Flutter Shop',
              style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Text("DG Flutter bilan hammasi zo'r. Bizga qo'shiling...",
            style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),

            SizedBox(height: 25),

            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
