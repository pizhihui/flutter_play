import 'package:flutter/material.dart';


class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[ListTile(leading: Icon(Icons.access_time),title: Text('access_time'),),
        ListTile(leading: Icon(Icons.home),title: Text('home'),),
        ListTile(leading: Icon(Icons.save_alt),title: Text('save_alt'),)],
      ),
    );
  }
}


class ListViewDataDemo extends StatelessWidget {

  final List<String> items = new List<String>.generate(100, (i)=> "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return ListTile(title: Text('${items[index]}'),);
          }),
    );
  }
}


