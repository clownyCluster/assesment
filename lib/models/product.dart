import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Baseball Jacket",
      price: 1800,
      size: 12,
      description: dummyText,
      // image: "assets/images/Baseball.jpeg",
      image: "assets/images/baseball.png",
      color: const Color(0xFF333333)),
  Product(
      id: 2,
      title: "Leather Jacket",
      price: 2600,
      size: 8,
      description: dummyText,
      image: "assets/images/leather.png",
      color: const Color(0xFF424242)),
  Product(
      id: 3,
      title: "Classic Brown Leather",
      price: 1900,
      size: 10,
      description: dummyText,
      // image: "assets/images/classic_brown.jpeg",
      image: "assets/images/brownLeather.png",
      color: Colors.brown),
  Product(
      id: 4,
      title: "Light Blue Demin Jacket",
      price: 2000,
      size: 11,
      description: dummyText,
      // image: "assets/images/Demin.jpeg",
      image: "assets/images/demin.png",
      color: const Color(0xFF9BC990)),
  Product(
      id: 5,
      title: "Orange Wind Stopper",
      price: 3200,
      size: 12,
      description: dummyText,
      // image: "assets/images/Down.jpeg",
      image: "assets/images/orange.png",
      color: const Color(0xFFF57c00)),
  Product(
    id: 6,
    title: "Silicon Jacket",
    price: 3500,
    size: 12,
    description: dummyText,
    // image: "assets/images/Silicon.jpeg",
    image: "assets/images/silicon.png",
    color: const Color(0xFFFFB74D),
  ),
  Product(
    id: 7,
    image: 'assets/images/military.png',
    title: 'Military Jacket',
    price: 2500,
    description: dummyText,
    size: 14,
    color: Colors.grey,
  )
];

String dummyText = "Lorem ipsum";
