import '../constants/constants.dart';
import './product.dart';
import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Winter Jackets',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                      text: "Price\n", style: TextStyle(color: Colors.white)),
                  TextSpan(
                    text: "Rs. ${product.price}",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
