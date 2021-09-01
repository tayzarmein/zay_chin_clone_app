import 'package:clone_zay_chin/data_models/product.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<Product> products = [];

  num get totalPrice {
    num total = 0;
    products.forEach((product) {
      total += product.price;
    });
    return total;
  }

  void addProduct(Product product) {
    products.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    int index =
        products.indexWhere((productInList) => product.id == productInList.id);
    if (index != -1) {
      products.removeAt(index);
    }
    notifyListeners();
  }

  int selectedProductCountInCart(Product product) {
    //Check if the selected product is already in cart.
    //Return count of selected product.
    var foundProducts =
        products.where((eachProduct) => eachProduct.id == product.id);
    return foundProducts.length;
  }
}
