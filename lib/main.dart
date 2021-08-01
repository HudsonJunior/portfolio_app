import 'package:flutter/material.dart';
import 'package:portfolio_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hudson Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Quicksand'),
      home: MyHomePage(),
    );
  }
}
