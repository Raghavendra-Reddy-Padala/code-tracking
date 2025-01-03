import 'package:ecommoerceapp/components/buttons.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Image.asset("lib/assests/icons8-amazon-shopping-app-500.png"
            ,color: Theme.of(context).colorScheme.inversePrimary,
            ),
            
            const SizedBox(
              height: 25,
            ),
            //title
            const Text(
              "Shoppers Stop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //subtitle
            Text("Premimum Quality Products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                )),
                  const SizedBox(
                    height: 25,
                  ),
            //button
            Mybutton(ontap: (){
              Navigator.pushNamed(context, '/shoppage');
            }, child:const Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}
