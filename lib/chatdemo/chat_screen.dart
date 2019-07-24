import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor, opacity: 1.0),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: <Widget>[
              // 输入框
              new Expanded(
                child: TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration: InputDecoration.collapsed(hintText: "Send a message"),
//              decoration: BoxDecoration(color: Colors.red),
                ),
              ),
              // 发送按钮
              new Container(
                margin: EdgeInsets.only(left: 4.0),
                child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleSubmitted(_textController.text)),
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FriendlyChat"),
      ),
      body: _buildTextComposer(),
    );
  }
}
