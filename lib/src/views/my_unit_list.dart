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

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          int giftIndex = cart.keys.toList()[index];
          Unit unit = units[giftIndex];
          int count = cart[giftIndex];

          return ListTile(
            leading: Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(unit.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("${unit.name}: ${count}"),
            trailing: RaisedButton(
              child: Text("Clear"),
              onPressed: () => bloc.clear(giftIndex),
            ),
          );
        },
      ),
    );
  }
}
