import 'package:flutter/material.dart';



class Counter extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int _counter = 0;

//  @override
//  void setState(fn) {
//    super.setState(fn);
//    _counter++;
//  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Count: $_counter'),
        RaisedButton(
          child: Text('Raise Btn'),
          onPressed: _increment,
            animationDuration: Duration(seconds: 0)
        ),
      ],
    );
  }
}


