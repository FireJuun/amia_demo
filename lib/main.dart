import 'package:flutter/material.dart';

import 'package:amia_demo/home1.dart';
import 'package:amia_demo/home2.dart';
import 'package:amia_demo/home3.dart';
import 'package:amia_demo/home4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AMIA_Demo',
      theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.red[900]),
      home: Home4(),
    );
  }
}

