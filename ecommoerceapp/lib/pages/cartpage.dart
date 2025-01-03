import 'package:ecommoerceapp/components/buttons.dart';
import 'package:ecommoerceapp/models/products.dart';
import 'package:ecommoerceapp/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});
//remove the item from cart method
  void removefromcart(BuildContext context, Product product) {
    //shoe a dalog box to ask user to confirm to remove from cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text("Remove This From Your Cart"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel',style: TextStyle(
                      color: Colors.blue
                    ),)),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      context.read<Shop>().removefromcart(product);
                    },
                    child: const Text('YES',style: TextStyle(
                      color: Colors.red
                    ),)),
              ],
            ));
  }
            //use presse dpay buttom
void paybutton(BuildContext context){
  showDialog(context: context, builder: (context)=>const AlertDialog(
    content:  Text("BACK END CONNECT CHESINAKA KONUKUNDUV LE"),
  )
  );

}

  

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("CART PAGE"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //cart list
          Expanded(
            child:cart.isEmpty?const  Center(child: Text("Your Cart is Empty"),)
            :ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
            //get individual item in cart
            final item = cart[index];
            //retrun as a cart tile ui
            return ListTile(
              title: Text(item.name),
              subtitle: Text("💲${item.price}"),
              leading: Image.asset(item.imagepath),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.red,
                onPressed: () => removefromcart(context,item),
              ),
            );
          })
          ),
          //paybutton
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mybutton(ontap:()=>paybutton(context), child:const Text("P A Y N O W")),
          )
        ],
      ),
    );
  }
}
