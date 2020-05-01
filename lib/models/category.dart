import 'package:flutter/material.dart';

class Category with ChangeNotifier {
  final String id;
  final String image;
  final String title;

  Category({
    @required this.id,
    @required this.image,
    @required this.title,
  });
}
