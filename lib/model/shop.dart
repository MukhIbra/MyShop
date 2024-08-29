import 'package:flutter/cupertino.dart';
import 'package:myshop/model/product.dart';
import 'package:provider/provider.dart';

class Shop extends ChangeNotifier{
  List<Product> _products = [
    Product(
        name: 'Glasses',
        price: 100,
        description: 'The best laptop ever. kam bomisan ovur...',
      imagePath: 'lib/assets/glasses.jpg'
    ),

    Product(
        name: 'Shoe',
        price: 1500,
        description: 'The best laptop ever. kam bomisan ovur...',
        imagePath: 'lib/assets/shoe.jpg'
    ),
    Product(
        name: 'Suits',
        price: 2500,
        description: 'The best laptop ever. kam bomisan ovur...',
        imagePath: 'lib/assets/suits.jpg'),
    Product(
        name: 'T-Shirt',
        price: 1800,
        description: 'The best laptop ever. kam bomisan ovur...',
        imagePath: 'lib/assets/tshirt.jpg'),
  ];

  List<Product> get products => _products;

  List<Product> _cart = [];

  List<Product> get cart => _cart;

  // ADD TO CART



  // D E L E T E



}
