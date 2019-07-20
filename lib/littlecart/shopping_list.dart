import 'package:flutter/material.dart';
import 'package:flutter_play/littlecart/shop_list_item.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({key key, this.productList}):super(Key key);
  final List<Product> productList;


  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping List'),),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: <Widget>[],
      ),
    );
  }
}


