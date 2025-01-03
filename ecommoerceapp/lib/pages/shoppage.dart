import 'package:ecommoerceapp/components/drawer.dart';
import 'package:ecommoerceapp/components/myproducttile.dart';
import 'package:ecommoerceapp/models/shop.dart';
import 'package:ecommoerceapp/themes/themesprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed:()=>Navigator.pushNamed(context, '/cartpage'), icon:const Icon(Icons.shopping_cart_checkout_rounded),tooltip: "CHECKOUT",),
          ),
           Switch(
            value: Provider.of<ThemeProvider>(context).isDarkMode,
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      drawer: const Mydrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(height: 25,),
          Center(
            child: Text("Pick your perimum products from here",
            style: TextStyle(
              fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.inversePrimary
            ),),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Myproducttile(product: product);
                }),
          ),
           BottomAppBar(child: IconButton(onPressed: ()=> Navigator.pushNamed(context, '/cartpage'), icon: const Icon(Icons.shopping_cart_checkout)),
          )
        ],
      ),

      
    );
  }
}
