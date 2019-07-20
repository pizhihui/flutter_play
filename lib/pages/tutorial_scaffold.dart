import 'package:flutter/material.dart';



// 这里使用Scaffold的appbar创建
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold是Material中主要的布局组件.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),  tooltip: 'Navigation menu', onPressed: null),
        title: Text('Example Title'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), tooltip: 'Search', onPressed: null,)
        ],
      ),
      body: Center(
        child: Text('Hello, world'),
      ),
      floatingActionButton: FloatingActionButton(tooltip: 'Add', child: Icon(Icons.add), onPressed: null),
    );
  }
}


