import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './my_unit_list.dart';
import '../bloc/cart_bloc.dart';
import '../../src/models/unit_list.dart';
import '../../src/views/unit_details.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    int totalCount = 0;

    if (bloc.cart.length > 0) {
      totalCount = bloc.cart.values.reduce((a, b) => a + b);
    }

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 26.0,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),
                ),
              ),
              Container(
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                  child: Text(
                    "${totalCount}",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(units.length, (index) {
          Unit unit = units[index];

          return GestureDetector(
            onTap: () => bloc.addToCart(index),
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(unit.img)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(bloc.cart[index] == null ? "0" : "${bloc.cart[index]}"),
                  Text(unit.name),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
