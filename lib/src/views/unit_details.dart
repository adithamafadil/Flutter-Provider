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

    return Scaffold();
  }
}
