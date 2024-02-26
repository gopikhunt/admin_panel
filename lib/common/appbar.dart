import 'package:flutter/material.dart';

AppBar commonAppbar({required String title}){
  return AppBar(
    backgroundColor: Colors.orange,
    title:  Text(title),
  );
}