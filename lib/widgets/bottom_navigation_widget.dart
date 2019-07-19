import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_play/pages/home_screen.dart';
import 'package:flutter_play/pages/airplay_screen.dart';
import 'package:flutter_play/pages/email_screen.dart';
import 'package:flutter_play/pages/pages_screen.dart';


class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();


}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _bottomNavColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() {
    super.initState();

    // 添加页面
    pageList..add(HomeScreen())
    ..add(airplayScreen())
    ..add(EmailScreen())
    ..add(PagesScreen());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 页面正式内容
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home, color: _bottomNavColor,), title: Text('Home', style: TextStyle(color: _bottomNavColor))),
        BottomNavigationBarItem(icon: Icon(Icons.email, color: _bottomNavColor,), title: Text('Email', style: TextStyle(color: _bottomNavColor))),
        BottomNavigationBarItem(icon: Icon(Icons.pages, color: _bottomNavColor,), title: Text('Pages', style: TextStyle(color: _bottomNavColor))),
        BottomNavigationBarItem(icon: Icon(Icons.airplay, color: _bottomNavColor,), title: Text('AiryPlay', style: TextStyle(color: _bottomNavColor))),
      ],
      // 好像没有这个属性也能用 ??
      //currentIndex: _currentIndex,
        // 点击事件
      onTap: (int index) {
        print("当前索引值是:$index");
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,),

    );
  }

}





