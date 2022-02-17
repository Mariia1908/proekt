import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text(
        'Привет 4 курс',
      ),
    ),
    body: Center(
      child: Text(
        'Я разработчик',
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),
      ),
    ),
  )));
}
