import 'package:flutter/material.dart';
import 'package:mchat/models/message.dart';
import 'package:mchat/screens/ChatScreen.dart';

class LastContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 垂直对齐
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "最近的联系人",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 14.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 110.0,
            color: Theme.of(context).accentColor,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: lastContact.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: lastContact[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    // 填充avator之间的间距
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(lastContact[index].imageUrl),
                        ),
                        // 填充avatar和字体之间的间距
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          lastContact[index].name,
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
