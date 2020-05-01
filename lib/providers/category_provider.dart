import 'package:flutter/material.dart';
import 'package:shju/models/category.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _items = [
    Category(
      id: "c1",
      image: 'assets/images/categories/sports.jpeg',
      title: 'Sports',
    ),
    Category(
      id: "c2",
      image: 'assets/images/categories/casual.jpg',
      title: 'Casual',
    ),
    Category(
      id: "c3",
      image: 'assets/images/categories/sneakers.jpeg',
      title: 'Sneakers',
    ),
    Category(
      id: "c4",
      image: 'assets/images/categories/slipon.jpg',
      title: 'Slip On',
    ),
    Category(
      id: "c5",
      image: 'assets/images/categories/loafers.jpeg',
      title: 'Loafers',
    ),
    Category(
      id: "c6",
      image: 'assets/images/categories/derby.jpg',
      title: 'Derby',
    ),
    Category(
      id: "c7",
      image: 'assets/images/categories/flipflops.jpg',
      title: 'Flip Flops',
    ),
    Category(
      id: "c8",
      image: 'assets/images/categories/heal.jpg',
      title: 'Heals',
    ),
    Category(
      id: "c9",
      image: 'assets/images/categories/armyboots.jpg',
      title: 'Army Boots',
    ),
  ];

  List<Category> get items {
    return [..._items];
  }
}
