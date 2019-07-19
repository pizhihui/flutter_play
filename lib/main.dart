import 'package:flutter/material.dart';
import 'package:flutter_play/widgets/bottom_navigation_widget.dart';
import 'package:flutter_play/widgets/list_view_demo.dart';
import 'package:flutter_play/widgets/wechat_me_page.dart';

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
      home: WeChatMePage(),
    );
  }
}


