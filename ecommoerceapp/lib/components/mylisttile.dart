import "package:flutter/material.dart";
class Mylisttile extends StatelessWidget {
  final String text ;
  final IconData icon;
  final void Function()? ontap;
  const Mylisttile({super.key,
  required this.icon,
  required this.text,
  required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: ListTile(
        leading:Icon(
          icon,
          color: Colors.grey,
        ) ,
        title: Text(text),
        onTap: ontap,
      ),
    );
  }
}