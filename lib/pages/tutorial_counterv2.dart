import 'package:flutter/material.dart';


// 剥离显示组件出来
class CountDisplay extends StatelessWidget {
  CountDisplay({this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Text('Count: $count');
  }
}

// 剥离事件组件出来
class CounterIncrementor extends StatelessWidget {

  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}


class CounterV2 extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<CounterV2> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CountDisplay(count: _counter,),
        CounterIncrementor(onPressed: _increment,)
      ],
    );
  }
}


