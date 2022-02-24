import 'package:assesment/models/addToCart.dart';

import 'cartCounter.dart';
import '../constants/constants.dart';
import 'colorAndSize.dart';
import 'imageDetails.dart';
import 'product.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  DetailsBody({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.365),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      ColorAndSize(product: product),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          product.description,
                          style: const TextStyle(height: 1.5),
                        ),
                      ),
                      CartCounter(),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                DetailsImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

