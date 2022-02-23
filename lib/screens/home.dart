import 'package:assesment/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_sharp, color: kTextColor,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: kTextColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined, color: kTextColor,))
        ],
      ),
      
    );
  }
}