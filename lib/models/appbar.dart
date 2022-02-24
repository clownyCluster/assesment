import '../constants/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.only(left: kDefaultPadding),
        child: CircleAvatar(backgroundImage: AssetImage('assets/images/logo.png'),),
      ),
      centerTitle: true,
      title: Text('Happy Shopping', style: TextStyle(color: kTextColor, fontFamily: 'Billabong', fontWeight: FontWeight.w500, fontSize: 30),),
      actions: [
        const SizedBox(width: kDefaultPadding,),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }