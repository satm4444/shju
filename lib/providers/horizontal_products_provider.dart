import 'package:flutter/material.dart';
import 'package:shju/models/product.dart';

class HorizontalProducts with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'a1',
      title: 'Hoka',
      image: "assets/images/pink.jpg",
      subtitle: 'Girls Shoes',
      price: 4500,
      description1:
          'A pair of round-toe black sneakers, has mid-top styling lace-up detail.',
      description2: "Synthetic Leather upper",
      description3: "Cushioned footbed",
      description4: "Textured and patterned outsole",
      description5: "Warranty: 1 month",
      description6: "Warranty provided by brand/manufacturer",
      material1: "Synthetic  Leather,",
      material2: "Wipe with a clean, dry cloth to remove dust",
      rating: 4.2,
    ),
    Product(
      id: 'a2',
      title: 'Nike',
      image: "assets/images/nike.jpeg",
      subtitle: 'Casual Men\'s Shoes',
      price: 4500,
      description1:
          'A pair of round-toe black sneakers, has mid-top styling lace-up detail.',
      description2: "Synthetic Leather upper",
      description3: "Cushioned footbed",
      description4: "Textured and patterned outsole",
      description5: "Warranty: 1 month",
      description6: "Warranty provided by brand/manufacturer",
      material1: "Synthetic  Leather,",
      material2: "Wipe with a clean, dry cloth to remove dust",
      rating: 4.2,
    ),
    Product(
      id: 'a3',
      title: 'Classic',
      image: "assets/images/blue.jpeg",
      subtitle: 'Men\'s Casual',
      price: 4500,
      description1:
          'A pair of round-toe black sneakers, has mid-top styling lace-up detail.',
      description2: "Synthetic Leather upper",
      description3: "Cushioned footbed",
      description4: "Textured and patterned outsole",
      description5: "Warranty: 1 month",
      description6: "Warranty provided by brand/manufacturer",
      material1: "Synthetic  Leather,",
      material2: "Wipe with a clean, dry cloth to remove dust",
      rating: 4.2,
    ),
    Product(
      id: 'a4',
      title: 'Addidas',
      image: "assets/images/sad.jpg",
      subtitle: 'Sports Shoes',
      price: 4500,
      description1:
          'A pair of round-toe black sneakers, has mid-top styling lace-up detail.',
      description2: "Synthetic Leather upper",
      description3: "Cushioned footbed",
      description4: "Textured and patterned outsole",
      description5: "Warranty: 1 month",
      description6: "Warranty provided by brand/manufacturer",
      material1: "Synthetic  Leather,",
      material2: "Wipe with a clean, dry cloth to remove dust",
      rating: 4.2,
    ),
    Product(
      id: 'a4',
      title: '...',
      image: "assets/images/loadcover.png",
      subtitle: '...',
      price: 0,
      description1: '',
      description2: "",
      description3: "",
      description4: "",
      description5: "",
      description6: "",
      material1: "",
      material2: "",
      rating: 4.2,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((tile) => tile.id == id);
  }
}
