import 'package:flutter/material.dart';

class CartBloc extends ChangeNotifier {
  Map<int, int> _cart = {};
  Map<int, int> get cart => _cart;

  void addToCart(index) {}

  void reduceItem(index) {}

  void clear(index) {}
}
