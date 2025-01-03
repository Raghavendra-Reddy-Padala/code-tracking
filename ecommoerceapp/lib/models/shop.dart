import 'package:ecommoerceapp/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    Product(
        name: "HOODIE",
        price: "150",
        description: 'Hoodie  a sweatshirt with a hood',
        imagepath: "lib/assests/hoodie3 - Copy.jpeg"),
    Product(
        name: "HOODIE-2",
        price: "100",
        description: 'Black HOODIE with a hood',
        imagepath: "lib/assests/hoodie1.jpeg"),
    Product(
        name: "HODDIE",
        price: "50",
        description: 'Maroon HOODIE with a hood',
        imagepath: "lib/assests/hoodie2.jpeg"),
    Product(
        name: "SHORT",
        price: "69",
        description: 'Premimum cotton short',
        imagepath: "lib/assests/hoddie3.jpeg"),
         Product(
        name: "SHORT",
        price: "69",
        description: 'Premimum cotton short',
        imagepath: "lib/assests/hoddie3.jpeg"),
         Product(
        name: "SHORT",
        price: "69",
        description: 'Premimum cotton short',
        imagepath: "lib/assests/hoddie3.jpeg"), Product(
        name: "SHORT",
        price: "69",
        description: 'Premimum cotton short',
        imagepath: "lib/assests/hoddie3.jpeg")
  ];

  //user cart
final List<Product>_cart =[];
  //get product list
  List<Product> get shop =>_shop;
  //get user cart
    List<Product> get cart =>_cart;
  //add item to cart
void addtocart(Product item){
  _cart.add(item);
  notifyListeners();
}
//remove item from cart
void removefromcart(Product item){
  _cart.remove(item);
  notifyListeners();
}
}
