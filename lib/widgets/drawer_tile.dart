import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  DrawerTile({
    required this.text,
    required this.iconData,
    required this.function,
    super.key,
  });
  String text;
  IconData iconData;
  VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: function,
          leading: Icon(iconData,color: Colors.white,),
          title: Text("$text",style: const TextStyle(
              fontSize: 20,
              color: Colors.white
          ),),
          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
        ),
        Divider(color: Colors.white70),
      ],
    );
  }
}