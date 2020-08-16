import 'package:flutter/material.dart';
import 'package:mchat/models/message.dart';
import 'package:mchat/models/user.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final Container msg = Container(
      // 左右显示对方的消息
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 100.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              //right: 100.0,
            ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 15.0,
      ),
      width: MediaQuery.of(context).size.width * 2 / 3,
      // 自己发送的消息加背景色
      decoration: BoxDecoration(
        color: isMe
            ? Theme.of(context).primaryColor
            : Theme.of(context).accentColor,
        borderRadius: isMe
            ? BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
      ),
      child: Row(
        children: <Widget>[
          !isMe
              ? CircleAvatar(
                  backgroundImage: AssetImage(message.sender.imageUrl),
                  radius: 24.0,
                )
              : SizedBox(),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.time,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  message.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          isMe
              ? CircleAvatar(
                  backgroundImage: AssetImage(message.sender.imageUrl),
                  radius: 24.0,
                )
              : SizedBox(),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
      ],
    );
  }

  _sendMessage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Theme.of(context).accentColor,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: '输入消息......',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          //保持和分类字体大小一致
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 24.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    // 设置box的上面的圆角
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    // 设置box的上面的圆角
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    //reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      bool isMe = message.sender.id == ownerUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _sendMessage(),
          ],
        ),
      ),
    );
  }
}
