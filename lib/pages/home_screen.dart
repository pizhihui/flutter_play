import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("这是首页"),),
      body: Center(child: Text("这是首页的正文内容"),),
    );
  }
}


