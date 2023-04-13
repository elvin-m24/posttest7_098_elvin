import 'package:flutter/material.dart';
import 'package:posttest7_098_elvin/models/product.dart';

class WishlistProvider with ChangeNotifier {
  List<Product> _wishlist = [
    Product(
      id: 1,
      name: "name",
      ketagori: "ketagori",
      harga: "harga",
      image: "assets/Pac612.jpg",
    ),
    Product(
      id: 2,
      name: "name",
      ketagori: "ketagori",
      harga: "harga",
      image: "assets/Pac612viix.jpg",
    )
  ];

  List<Product> get wishlist => _wishlist;

  set wishlist(List<Product> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(Product product) {
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }

    notifyListeners();
  }

  isWishlist(Product product) {
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
