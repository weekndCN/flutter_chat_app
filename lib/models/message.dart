// import User struct
import 'package:mchat/models/user.dart';

// Message Struct
class Message {
  final User sender; // sender
  final String time; // send time
  final String text; // send text
  final bool isLiked; // is like?
  final bool unread; // already read message?

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User roger = User(
  id: 1,
  name: 'roger',
  imageUrl: 'assets/images/roger.jpg',
);

final User weeknd = User(
  id: 2,
  name: 'weeknd',
  imageUrl: 'assets/images/weeknd.jpg',
);

final User low = User(
  id: 3,
  name: 'low',
  imageUrl: 'assets/images/low.jpg',
);

final User ff = User(
  id: 4,
  name: 'ff',
  imageUrl: 'assets/images/ff.jpg',
);

final User michael = User(
  id: 5,
  name: 'michael',
  imageUrl: 'assets/images/michael.jpg',
);

final User seaon = User(
  id: 6,
  name: 'seaon',
  imageUrl: 'assets/images/seaon.jpg',
);

final User daniel = User(
  id: 7,
  name: 'daniel',
  imageUrl: 'assets/images/daniel.jpg',
);

List<User> lastContact = [roger, low, ff, daniel, seaon];

List<Message> chats = [
  Message(
    sender: low,
    time: '9:05 PM',
    text: '可以上WhatsApp？',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: weeknd,
    time: '9:05 PM',
    text: '请问你是国服第一美男子吗？',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: roger,
    time: '9:05 PM',
    text: 'template是他们每次迭代都同步数据库。下一次新的部署clone一下就可以用！',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: seaon,
    time: '8:05 PM',
    text: 'Vue新版发布地址。https://vwww.vue.com/release',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ff,
    time: '7:05 PM',
    text: '@Bob SAMA 这里面的全都是买一送一',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: daniel,
    time: '6:05 PM',
    text: 'template是他们每次迭代都同步数据库。下一次新的部署clone一下就可以用！',
    isLiked: false,
    unread: true,
  ),
];

// const chat messages of p2p
List<Message> messages = [
  Message(
    sender: roger,
    time: '5:30 PM',
    text: '请问你是国服第一美男子吗？',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: weeknd,
    time: '4:30 PM',
    text: '当然是的！',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: roger,
    time: '3:45 PM',
    text: '每一个优秀的人都有一段沉默的时光，那段时光，是付出了很多努力，却得不到结果的日子，我们把它叫做扎根。',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: roger,
    time: '3:15 PM',
    text: '抗揍么',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: weeknd,
    time: '2:30 PM',
    text: '发光不是太阳的权利，每个人都可以。',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: roger,
    time: '2:00 PM',
    text:
        '如果你说你在下午四点来，从三点钟开始，我就开始感觉很快乐，时间越临近，我就越來越感到快乐。到了四点钟的时候，我就会坐立不安，我发现了幸福的价值；但是如果你随便什么时候来，我就不知道在什么时候准备好迎接你的心情了',
    isLiked: false,
    unread: true,
  ),
];

// define yourself AC.
final User ownerUser = User(
  id: 2,
  name: 'weeknd',
  imageUrl: 'assets/images/weeknd.jpg',
);
