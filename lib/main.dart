import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(ShoppingCart());
}

class ShoppingCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen()
    );
  }
}
