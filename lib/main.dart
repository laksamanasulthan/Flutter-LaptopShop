import 'package:flutter/material.dart';
import 'package:uts_pemrograman_mobile_19650098/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Pemrograman Mobile C',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: homepage(),
    );
  }
}
