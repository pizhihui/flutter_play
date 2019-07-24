import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'chat_message.dart';

// 参考地址 https://codelabs.developers.google.com/codelabs/flutter/#8

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin{
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messageList = new List();

  void _handleSubmitted(String text) {
    _textController.clear();

    ChatMessage message = new ChatMessage(
      text: text,
      animationController: AnimationController(duration: Duration(milliseconds: 700),vsync: this),
    );
    setState(() {
      _messageList.insert(0, message);
    });
    message.animationController.forward();

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
                  decoration:
                      InputDecoration.collapsed(hintText: "Send a message"),
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
      body: Column(
        children: <Widget>[
          Flexible(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messageList[index],
                itemCount: _messageList.length,
              )),
          Divider(
            height: 1.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }


  @override
  void dispose() {
    for (ChatMessage message in _messageList) {
      message.animationController.dispose();

    }
    super.dispose();
  }

}
