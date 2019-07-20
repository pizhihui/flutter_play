import 'package:flutter/material.dart';
import 'package:flutter_play/littlecart/shop_list_item.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.productList}):super(key: key);
  //ShoppingList({Key key, this.productList}) : super(key: key);
  final List<Product> productList;


  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {

  Set<Product> _shoppingCart = new Set();
  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart){
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping List'),),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.productList.map((Product product){
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}


