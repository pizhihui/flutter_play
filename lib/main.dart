import 'package:flutter/material.dart';
import 'package:flutter_play/littlecart/shopping_list.dart';
import 'package:flutter_play/pages/tutorial_counter.dart';
import 'package:flutter_play/pages/tutorial_counterv2.dart';
import 'package:flutter_play/pages/tutorial_materia.dart';
import 'package:flutter_play/pages/tutorial_scaffold.dart';
import 'package:flutter_play/widgets/bottom_navigation_widget.dart';
import 'package:flutter_play/widgets/list_view_demo.dart';
import 'package:flutter_play/widgets/wechat_me_page.dart';

import 'chatdemo/chat_screen.dart';
import 'layout/expanded_demo.dart';
import 'layout/flexible_demo.dart';
import 'littlecart/shop_list_item.dart';
import 'package:flutter/foundation.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(new MyAPP());
}

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

class MyAPP extends StatelessWidget {

  //用户名
  String userName;

  //密码
  String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FriendlyChat",
      theme: defaultTargetPlatform == TargetPlatform.iOS //new
          ? kIOSTheme //new
          : kDefaultTheme,
      routes: {
        '/first': (BuildContext context) => FirstPage(), //添加路由
        '/second': (BuildContext context) => SecondPage(),
      },
      initialRoute: '/first',//初始路由页面为first页面
      home: MyHomePage(),
    );
  }
}

//这是一个可改变的Widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('MaterialApp示例'),
      ),
      body: Center(
        child: Text(
          '主页',
          style: TextStyle(fontSize: 28.0),
        ),
      ),
    );
  }
}

//第一个路由页面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('这是第一页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //路由跳转到第二个页面
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '这是第一页',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}

//第二个路由页面
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('这是第二页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //路由跳转到第一个页面
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '这是第二页',
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
//
//class MyAPP extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: "FriendlyChat",
//      theme: defaultTargetPlatform == TargetPlatform.iOS         //new
//          ? kIOSTheme                                              //new
//          : kDefaultTheme,
//      home: ChatScreen(),
//    );
//  }
//}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Samples',
//      theme: ThemeData.light(),
//      home: ShoppingList(
//        productList: <Product>[
//          new Product(name: 'Eggs'),
//          new Product(name: 'Flour'),
//          new Product(name: 'Chocolate chips')
//        ],
//      )
//      ,
//    );
//  }
//}

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
