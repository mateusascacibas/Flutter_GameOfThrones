import 'package:flutter/material.dart';

Container img(String text) {
  return Container(
    margin: EdgeInsets.all(20),
    child: Image.asset(
      text,
      fit: BoxFit.contain,
      width: 250,
    ),
  );
}

Container imgList(String text) {
  return Container(
    margin: EdgeInsets.all(20),
    child: Image.asset(
      text,
      fit: BoxFit.cover,
      width: 250,
    ),
  );
}