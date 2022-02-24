import '../constants/constants.dart';
import 'package:flutter/material.dart';

// For category Listing

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> category = [
    "Jacket",
    "Shoes",
    "T-shirt",
    "Sweat Shirt",
    "Party Suits",
    "Hoodie"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () => setState(
        () {
          selectedIndex = index;
        },
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category[index],
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: selectedIndex == index ? Colors.yellow[900] : kTextLightColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: kDefaultPadding / 5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.yellow[900] : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}