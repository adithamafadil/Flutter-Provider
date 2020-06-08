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
          int count = cart[giftIndex];
          Unit unit = units[giftIndex];

          return ListTile(
            leading: Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(unit.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("${unit.name}: $count"),
            trailing: RaisedButton(
              child: Text("Kurangi"),
              elevation: 1.0,
              splashColor: Colors.blueGrey,
              onPressed: () => bloc.reduceItem(giftIndex),
            ),
          );
        },
      ),
    );
  }
}
