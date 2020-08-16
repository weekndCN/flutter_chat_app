// HomeScreen is APP ROOT HOME
import 'package:flutter/material.dart';
import 'package:mchat/widgets/CategorySelector.dart';
import 'package:mchat/widgets/LastContacts.dart';
import 'package:mchat/widgets/LastMessages.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        // 顶部左边按钮
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 24.0,
          color: Colors.white,
          onPressed: () {},
        ),
        // app title
        title: Text(
          '',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // 移除bar的阴影效果
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 24.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      //主体显示
      body: Column(
        children: <Widget>[
          CategorySelector(),
          // expanded填充全部
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // 设置背景色
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  // 设置box的上面的圆角
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              // 显示最近的联系人的提示栏 + more按钮
              child: Column(
                children: <Widget>[
                  LastContacts(),
                  LastMessages(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
