import 'package:flutter/material.dart';
import 'package:flutter_play/littlecart/shopping_list.dart';
import 'package:flutter_play/pages/tutorial_counter.dart';
import 'package:flutter_play/pages/tutorial_counterv2.dart';
import 'package:flutter_play/pages/tutorial_materia.dart';
import 'package:flutter_play/pages/tutorial_scaffold.dart';
import 'package:flutter_play/widgets/bottom_navigation_widget.dart';
import 'package:flutter_play/widgets/list_view_demo.dart';
import 'package:flutter_play/widgets/wechat_me_page.dart';

import 'littlecart/shop_list_item.dart';

//void main() => runApp(MyApp());

void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Samples',
      theme: ThemeData.light(),
      home: ShoppingList(
        productList: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Flour'),
          new Product(name: 'Chocolate chips')
        ],
      )
      ,
    );
  }
}

//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Samples',
//      theme: ThemeData.light(),
//      home: Scaffold(
//        appBar: AppBar(title: Text('标题'),),
//        body: CounterV2(),
//      ),
//    );
//  }
//}