import '../constants/constants.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text(
                'Color',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  ColorOption(
                    color: Colors.grey,
                    isSelected: true,
                  ),
                  ColorOption(
                    color: Colors.brown,
                    isSelected: false,
                  ),
                  ColorOption(
                      color: Colors.lightGreen, isSelected: false),
                  ColorOption(
                      color: Colors.black, isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'Size\n',
                    style: TextStyle(color: kTextColor)),
                TextSpan(
                  text: '${product.size}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorOption extends StatelessWidget {
  ColorOption({required this.color, required this.isSelected});
  final Color color;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}