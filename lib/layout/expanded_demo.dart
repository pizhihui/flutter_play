import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded的案例"),
      ),
      body: Row(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              print("点击红色按钮事件....");
            },
            color: Color(0xffcc00),
            child: Text("红色按钮"),
          ),
          Expanded(
              flex: 1,
              child: RaisedButton(
                onPressed: () {
                  print("点击黄色按钮事件....");
                },
                color: Color(0xfff1c232),
                child: Text("黄色按钮"),
              )
          ),
          RaisedButton(
            onPressed: () {
              print("点击粉色按钮事件....");
            },
            color: Color(0xffea9999),
            child: Text("粉色按钮"),
          ),
        ],
      ),
    );
  }
}
