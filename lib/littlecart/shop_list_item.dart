

import 'package:flutter/material.dart';

// 数据模型
class Product {
  final String name;
  Product({this.name});
}

// 定义事件
typedef void CartChangeCallBack(Product product, bool inCart);

// 购物车item
class ShoppingListItem extends StatelessWidget {

  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
  :product = product,
  super(key: new  ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangeCallBack onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart? Colors.black54: Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context),),
    );
  }
}




