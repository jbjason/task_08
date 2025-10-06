import 'package:flutter/material.dart';

 class MyDimens {
  Widget getTitle(String title,{Color color = Colors.black})=>
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Text(title,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),),
  );
}
