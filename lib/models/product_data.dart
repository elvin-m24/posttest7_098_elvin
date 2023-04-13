import 'package:flutter/material.dart';
import 'package:posttest7_098_elvin/models/product.dart';

class ProductData with ChangeNotifier {
  List<Product> _products = [
    Product(
      id: 1,
      name: "name",
      ketagori: "ketagori",
      harga: "harga",
      image: "image",
    ),
    Product(
      id: 2,
      name: "name",
      ketagori: "ketagori",
      harga: "harga",
      image: "image",
    )
  ];

  List<Product> get products => _products;

  set products(List<Product> products) {
    _products = products;
    notifyListeners();
  }
}
