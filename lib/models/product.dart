import 'package:flutter/material.dart';

class Product {
  final String image, title, size, description;
  final int price, id;
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
      size: 'L',
      description: desc,
      // image: "assets/images/Baseball.jpeg",
      image: "assets/images/baseball.png",
      color: const Color(0xFF333333)),
  Product(
      id: 2,
      title: "Leather Jacket",
      price: 2600,
      size: 'XXL',
      description: desc,
      image: "assets/images/leather.png",
      color: const Color(0xFF424242)),
  Product(
      id: 3,
      title: "Classic Brown Leather",
      price: 1900,
      size: 'L',
      description: desc,
      // image: "assets/images/classic_brown.jpeg",
      image: "assets/images/brownLeather.png",
      color: Colors.brown),
  Product(
      id: 4,
      title: "Light Blue Demin Jacket",
      price: 2000,
      size: 'M',
      description: desc,
      // image: "assets/images/Demin.jpeg",
      image: "assets/images/demin.png",
      color: const Color(0xFF93A9F4),
      ),
  Product(
    id: 5,
    title: "Orange Wind Stopper",
    price: 3200,
    size: 'XL',
    description: desc,
    // image: "assets/images/Down.jpeg",
    image: "assets/images/orange.png",
    color: const Color(0xFFE65100),
    
  ),
  Product(
    id: 6,
    title: "Silicon Jacket",
    price: 3500,
    size: 'L',
    description: desc,
    // image: "assets/images/Silicon.jpeg",
    image: "assets/images/silicon.png",
    color: const Color(0xFFF9D97D),
  ),
  Product(
    id: 7,
    image: 'assets/images/military.png',
    title: 'Military Jacket',
    price: 2500,
    description: desc,
    size: 'XL',
    color: Colors.grey,
  )
];

String desc = "Ditch the cold and keep yourself warm wearing this Jacket. This regular-fit Jacket is superior in quality, light in weight and will create a protective shield against cold winds. This Jacket is a must have for the summer season to protect you from cold. Stay warm stay safe";
