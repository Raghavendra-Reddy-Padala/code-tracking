import 'package:ecommoerceapp/models/products.dart';
import 'package:ecommoerceapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myproducttile extends StatelessWidget {
  final Product product;
  const Myproducttile({super.key, required this.product});
  void addtocart(BuildContext context) {
    //show a dialogbox to ask user ro conform it
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text("Add This Item To Your Cart"),
              actions: [
                MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel')),
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<Shop>().addtocart(product);
                    },
                    child: const Text('ADD')),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //product iamgee
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      padding: const EdgeInsets.all(25),
                      child:  Image.asset(product.imagepath)),
                ),
                const SizedBox(
                  height: 25,
                ),
                //product name
                Text(
                  product.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),

                const SizedBox(
                  height: 25,
                ),
                Text(
                  product.description,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            //product price + add to cart button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("💲${product.price}"),
                Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () => addtocart(context),
                      icon: const Icon(Icons.add),
                      tooltip: "C A R T",
                    ))
              ],
            )
          ],
        ),
      ),
    );
    
  }
}
