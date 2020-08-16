import 'package:flutter/material.dart';
import 'package:mchat/screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RWCHAT UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.teal[50],
      ),
      home: HomeScreen(),
    );
  }
}
