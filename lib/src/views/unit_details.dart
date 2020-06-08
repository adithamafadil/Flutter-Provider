import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../src/models/unit_list.dart';
import '../../src/bloc/cart_bloc.dart';

class UnitDetail extends StatefulWidget {
  final int index;
  final Unit unit;

  UnitDetail({
    @required this.unit,
    @required this.index,
  });

  @override
  _UnitDetailState createState() => _UnitDetailState();
}

class _UnitDetailState extends State<UnitDetail> {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<CartBloc>(context);
    String _addButtonText;
    String _deleteButtonText;

    setState(() {
      if (bloc.cart[widget.index] == null) {
        _addButtonText = "Add";
        _deleteButtonText = "None";
      } else if (bloc.cart[widget.index] == 4) {
        _addButtonText = "Cukup";
        _deleteButtonText = "Delete All";
      } else {
        _addButtonText = "You've Got ${bloc.cart[widget.index]}";
        _deleteButtonText = "Delete All";
      }
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(widget.unit.name),
            Text(widget.unit.rarity),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                height: 450.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      widget.unit.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        onPressed: () => bloc.addToCart(widget.index),
                        child: Text(_addButtonText),
                      ),
                    ),
                    SizedBox(width: bloc.cart[widget.index] == null ? 0 : 24.0),
                    bloc.cart[widget.index] == null
                        ? Container()
                        : Expanded(
                            flex: 1,
                            child: RaisedButton(
                              color: Colors.red,
                              onPressed: bloc.cart[widget.index] == null
                                  ? null
                                  : () => bloc.clear(widget.index),
                              child: Text(_deleteButtonText),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 12.0,
            ),
            child: Text(
              widget.unit.description,
              textAlign: TextAlign.center,
              style: TextStyle(letterSpacing: 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
