import 'package:flutter/material.dart';



class MyAppBar extends StatelessWidget {

  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0), // 左侧和右侧均有8像素的填充
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu),tooltip: "Navigation menu", onPressed: null,),
          Expanded(child: title,),
          IconButton(icon: Icon(Icons.search), tooltip: 'Search', onPressed: null,),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是UI呈现的“一张纸”
    return Material(
      // Column is 垂直方向的线性布局.
      child: Column(
          children: <Widget>[
            MyAppBar(
              title: Text('Example Title', style: Theme.of(context).primaryTextTheme.title,),
            ),
            Expanded(
              child: Center(
                child: Text('Hello, World'),
              ),
            )
          ],
      ),
    );
  }
}


