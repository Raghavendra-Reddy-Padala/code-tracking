import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
  final void Function()? ontap;
  final Widget child;
   const Mybutton({super.key,
   required this.ontap,
   required this.child
   });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)
        ),
        padding: const EdgeInsets.all(25),
        child:child ,
      ),
    );
  }
}