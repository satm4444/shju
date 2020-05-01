import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final double price;
  final String description1;
  final String description2;
  final String description3;
  final String description4;
  final String description5;
  final String description6;
  final String material1;
  final String material2;
  final double rating;

  Product(
      {@required this.id,
      @required this.title,
      @required this.image,
      @required this.subtitle,
      @required this.price,
      @required this.description1,
      @required this.description2,
      @required this.description3,
      @required this.description4,
      @required this.description5,
      @required this.description6,
      @required this.material1,
      @required this.material2,
      @required this.rating});
}
