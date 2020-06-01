import 'package:flutter/material.dart';
import './pages/index_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '工时管理',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: IndexPage(),
    );
  }
}

