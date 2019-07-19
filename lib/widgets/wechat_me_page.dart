import 'package:flutter/material.dart';


class WeChatMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          wallet,
          setting
        ],
      ),
    );
  }


  var wallet = Container(
    color: Colors.grey[200],
    padding: EdgeInsets.only(top: 20.0),
    child: Container(
      color: Colors.white,
      height: 50.0,
      child: ListTile(
        leading: new Icon(Icons.call_to_action),
        title: Text('钱包'),
        onTap: (){
          print('点击钱包 跳转到钱包页面');
        },
      ),
    ),
  );


  var setting = Container(
    color: Colors.grey[200],
    padding: EdgeInsets.only(top: 20.0),
    child: Container(
      color: Colors.white,
      height: 50.0,
      child: ListTile(
        leading: Icon(Icons.settings),
        title: Text('设置'),
        onTap: (){
          print('设置....');
        },
      ),
    ),
  );



}



