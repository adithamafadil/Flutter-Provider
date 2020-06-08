import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../bloc/cart_bloc.dart';
import '../../src/models/unit_list.dart';

class Cart extends StatelessWidget {
  Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    var cart = bloc.cart;

    return Scaffold();
  }
}
