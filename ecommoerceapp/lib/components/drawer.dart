import "package:ecommoerceapp/components/mylisttile.dart";
import "package:flutter/material.dart";
class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //drawerlogo
          DrawerHeader(child: Center(child: Image.asset("lib/assests/icons8-amazon-shopping-app-500.png",
          ))),
        //const SizedBox(height: 25,),
          //shoptile
        Mylisttile(icon: Icons.shopping_bag, text: "S H O P", ontap: ()=>Navigator.pop(context)),
          //carttile
        Mylisttile(icon: Icons.shopping_cart ,text: "C A R T", ontap: (){Navigator.pop(context);
        Navigator.pushNamed(context,'/cartpage');
        }
        ),
        //settigstile
        Mylisttile(icon: Icons.settings, text: "S E T T I N G S", ontap: (){Navigator.pop(context);
        Navigator.pushNamed(context,'/settingpage');

         }),

        Mylisttile(icon: Icons.settings, text: "A B O U T", ontap: (){Navigator.pop(context);
        Navigator.pushNamed(context,'/aboutpage');

         }),
          //exittile
         Mylisttile(icon: Icons.logout, text: "L O G O U T", ontap: (){Navigator.pop(context);
        Navigator.pushNamed(context,'/intropage');

         }),
           

        ],
      ),
    );
  }
}