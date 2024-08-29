import 'package:flutter/material.dart';

import '../model/product.dart';

class MyProduct extends StatelessWidget {
  Product product;
  void Function()? onPressed;

  MyProduct({super.key, required this.product, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(product.imagePath)),
                ),
              ),
              SizedBox(height: 25),
              Text(
                product.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(height: 10),
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + product.price.toString(),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: onPressed,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
