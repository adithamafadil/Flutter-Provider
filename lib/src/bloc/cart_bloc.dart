import 'package:flutter/material.dart';

class CartBloc extends ChangeNotifier {
  Map<int, int> _cart = {};
  Map<int, int> get cart => _cart;

  void addToCart(index) {
    if (_cart.containsKey(index)) {
      _cart[index] += 1;
      if (_cart[index] > 4) {
        _cart[index] = 4;
      }
    } else {
      _cart[index] = 1;
    }
    // _cart[index] = 1;

    notifyListeners();
  }

  void reduceItem(index) {
    if (_cart[index] > 1) {
      _cart[index] -= 1;
    } else {
      clear(index);
    }
    notifyListeners();
  }

  void clear(index) {
    if (_cart.containsKey(index)) {
      _cart.remove(index);
      notifyListeners();
    }
  }
}
